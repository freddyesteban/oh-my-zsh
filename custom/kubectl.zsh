function _get_k8s_context() {
    local context

    kubeconfig="$HOME/.kube/config"
    if [[ -n "$KUBECONFIG" ]]; then
        kubeconfig="$KUBECONFIG"
    fi

    context="$(kubectl config current-context 2>/dev/null)"
    [ -z "$context" ] && echo "" || echo "($context)"
}
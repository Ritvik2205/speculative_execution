.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
xor rax, -91
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
btr si, di
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
not bl
and cx, -2
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and bl, sil
and eax, -85386306
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

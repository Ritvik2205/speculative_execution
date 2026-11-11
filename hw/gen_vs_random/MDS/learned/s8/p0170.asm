.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 8
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and sil, 89
and dil, dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
test al, dl
jmp .bb_0.1
.bb_0.1:
test dil, cl
and rax, -731384280
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
or dl, -8
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

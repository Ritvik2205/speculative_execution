.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor cl, 83
and bx, 99
test bl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
xor al, cl
xor rcx, 71
btc rax, 59
test dl, dil
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
bt bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

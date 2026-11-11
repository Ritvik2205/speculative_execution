.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
xor al, 99
test cl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
xor dl, -59
and cl, -111
xor rax, 459999114
or al, bl
test dl, -85
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and eax, 454700988
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

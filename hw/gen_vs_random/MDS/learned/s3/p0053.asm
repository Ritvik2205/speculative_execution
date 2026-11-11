.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -16061
or al, 37
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and al, 106
xor rax, -404206377
xor dl, -43
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and eax, 943733866
xor dl, -19
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

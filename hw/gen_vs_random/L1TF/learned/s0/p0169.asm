.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rax, rbx
sbb bl, dl
and al, -68
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
or dil, -113
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 97
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
or cx, 40
adc al, 80
and al, -68
xor al, dil
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx + rax]
add bl, -5 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
imul ecx, ecx, 5
and dil, cl
xor dil, dil
cmp cl, 87
adc dx, -112
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
cmovno dx, cx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
test rcx, -1420345926
mul dil
and dl, -92
setno cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

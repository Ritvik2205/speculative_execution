.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
add bl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
add bl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
sbb dl, bl
and cl, 86
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 47
lea rax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 19
xor dl, dil
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

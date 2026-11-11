.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
mov dl, dil
cmp al, bl
not dl
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -119 # instrumentation
adc dl, bl
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
lea esi, qword ptr [rax + rsi + 17]
lea rax, qword ptr [rax + rdi]
lea edx, qword ptr [rax + rax + 15]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
add rbx, 4
bt ax, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

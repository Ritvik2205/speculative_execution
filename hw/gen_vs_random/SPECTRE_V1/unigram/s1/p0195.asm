.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xchg edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
sbb ebx, edi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
lea rbx, qword ptr [rdx + rsi + 34562]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
lea edx, qword ptr [rax]
cmovnb rdx, rcx
add cl, -51 # instrumentation
cmovno rcx, rax
cmovnb rcx, rdi
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

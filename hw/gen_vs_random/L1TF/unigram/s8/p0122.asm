.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 36
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
cmovnle rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 71
jmp .bb_0.1
.bb_0.1:
mov edx, esi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
sbb dil, al
xor ax, si
add dl, -8 # instrumentation
lea esi, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

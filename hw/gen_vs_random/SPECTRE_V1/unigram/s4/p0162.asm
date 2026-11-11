.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, dx
xor rdi, 30
cmovl esi, ebx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovno edi, ebx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 84
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 14
xor cx, 13
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
setnp dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

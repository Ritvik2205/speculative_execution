.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
test esi, ebx
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb rdi, 39
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
or dil, dil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
dec edx
add dl, -127 # instrumentation
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
cmovnbe bx, cx
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
lea rsi, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

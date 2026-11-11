.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
cmovnl eax, edi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
sub dl, al
cmp ebx, -33
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
btr rdx, rcx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], di
mul al
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 60
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
xor rbx, 50
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

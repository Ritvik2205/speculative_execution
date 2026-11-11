.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg eax
or esi, -74
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
or dx, dx
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
add bl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
cmp rcx, 60
movzx ax, dl
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

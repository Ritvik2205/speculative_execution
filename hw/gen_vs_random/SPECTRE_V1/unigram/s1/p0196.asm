.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 1
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
add cl, 22 # instrumentation
cmovns rax, rdi
lea di, qword ptr [rbx + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
mov sil, sil
add cl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
add sil, 36
lea edx, qword ptr [rbx + rdx + 20]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 32
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
lea bx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
add al, 112 # instrumentation
setl al
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, 43
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
mul rcx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
xchg bl, cl
movsx rax, ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
sbb rdi, 7
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 80
cmovp cx, dx
sbb cl, sil
or dl, 41
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz dx, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 9
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
sbb rdi, 13
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 85
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
btr edx, 7
btr bx, 104
xchg al, al
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
mov rsi, rax
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and sil, sil
add dl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

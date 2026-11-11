.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 82
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
movzx ebx, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor bx, bx
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 60
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
lea si, qword ptr [rbx + rax + 54]
sub di, cx
xchg bl, bl
add dl, al
bt esi, 1
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, rbx
sbb dl, -26
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor al, al
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
xor al, sil
sbb bx, bx
movzx edx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 16
cmovnp rax, rax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovle rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

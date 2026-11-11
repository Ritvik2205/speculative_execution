.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
add cl, 44 # instrumentation
cmovns dx, cx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and al, cl
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 18
cmovp rcx, rdx
add cl, 107 # instrumentation
cmovnl ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
btc eax, edi
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
cmovnp rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
cmovnl edi, ebx
or dx, 4
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 89
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rcx, 32
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
bts rax, 149
test cl, cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
or sil, -8
xor bl, 2
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

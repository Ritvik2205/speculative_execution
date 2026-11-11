.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 15
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
lea ax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
btc si, di
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 22
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sbb eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

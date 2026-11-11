.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
cmovb ax, di
mul dx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
xor al, 14
sbb dl, sil
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
sbb al, sil
cmovnle rsi, rsi
cmp dil, 9
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

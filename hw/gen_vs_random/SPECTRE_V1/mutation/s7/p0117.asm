.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdx, 95
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
sub cl, cl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
jno .bb_0.1
jmp .exit_0
.bb_0.1:
neg rcx
movzx ecx, dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
bts di, 144
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
sub bl, cl
cmovnl edi, esi
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
test al, bl
sub ax, -15315
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

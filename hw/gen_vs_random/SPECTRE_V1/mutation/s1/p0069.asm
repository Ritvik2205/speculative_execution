.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
xor rax, 29
xchg edi, ebx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
test al, bl
bts di, 230
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
cmovnl edi, esi
neg rcx
movzx ecx, dx
sub ax, -15315
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

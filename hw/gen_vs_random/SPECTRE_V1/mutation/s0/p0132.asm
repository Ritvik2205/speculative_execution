.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor rax, 620504108
xchg edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnl edi, esi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
neg rcx
test al, bl
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
bts di, 144
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
movzx ecx, dx
sub bl, cl
sub ax, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

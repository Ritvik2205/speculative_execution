.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor rax, 29
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
neg rcx
movzx ecx, dx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
bts di, 144
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
sub bl, cl
cmovnl edi, esi
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
test al, bl
sub ax, 124
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add bl, 88 # instrumentation
sbb bl, 7
cmovp rcx, rdx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovle rsi, rcx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
add dl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
imul al
btr rcx, 195
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

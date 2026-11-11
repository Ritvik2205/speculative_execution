.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
dec ax
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
btc rcx, rsi
imul esi, edi
cmovno rdi, rax
and dil, -82
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
xor al, 45
jmp .bb_0.1
.bb_0.1:
sub dx, 34
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
sub rax, -15
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
lea ecx, qword ptr [rdx]
mov bl, dl
xor di, cx
cmp cl, 57
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
imul esi, edi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
cmovno rdi, rax
btc rcx, rsi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and dil, -22
xor al, 89
dec ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
sub dx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

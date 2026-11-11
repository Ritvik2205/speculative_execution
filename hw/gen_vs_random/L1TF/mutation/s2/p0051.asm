.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
xor al, 16
dec ax
btc rcx, rsi
and dil, -22
cmovno rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
imul esi, edi
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
sub dx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 97 # instrumentation
cmovnb dx, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xchg dl, sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
inc rsi
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
neg esi
imul eax, eax, 80
cmp ebx, edx
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
sub sil, -18
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 199
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
btr rsi, rsi
bt dx, bx
jmp .bb_0.1
.bb_0.1:
xor si, cx
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
or al, -8
cmovnle ecx, edx
bts bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
test sil, dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 14
sub sil, 16
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

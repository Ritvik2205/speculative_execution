.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ecx, edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
xor dl, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub bx, 4
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
lea cx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
movzx eax, cx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
inc cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 86
test dl, dil
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

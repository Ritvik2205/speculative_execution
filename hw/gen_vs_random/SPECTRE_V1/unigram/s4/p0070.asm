.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
lea rbx, qword ptr [rcx + rbx]
sub al, dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
cmp dx, si
movzx cx, bl
add al, 10
add al, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
btc ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
mul rcx
bt edx, 38
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
setnl bl
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add al, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub dl, bl
lea cx, qword ptr [rdx + rax]
sbb bl, -88
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
lea bx, qword ptr [rax + rdx + 24839]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
add di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

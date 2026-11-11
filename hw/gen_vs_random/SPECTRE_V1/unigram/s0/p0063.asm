.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl dl
bts edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 46
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 28
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
add bl, 40 # instrumentation
lea bx, qword ptr [rax + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 90 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
add bl, -108 # instrumentation
sbb al, 59
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
add dl, 35 # instrumentation
cmovnz rcx, rbx
lea rdx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

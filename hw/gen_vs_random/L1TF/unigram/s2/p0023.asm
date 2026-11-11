.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ebx, edx
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
add dl, 109 # instrumentation
cmovnb rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
add al, -122 # instrumentation
cmovnbe edi, edi
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
btr rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], si
and sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

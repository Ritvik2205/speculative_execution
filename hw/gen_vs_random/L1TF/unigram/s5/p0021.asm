.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
mov al, cl
imul edx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
cmovb ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
add al, 87 # instrumentation
cmovo rdx, rbx
and sil, 37
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

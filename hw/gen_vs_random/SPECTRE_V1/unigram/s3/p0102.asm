.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 87
add dl, -6 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add cl, 99 # instrumentation
sets cl
add cl, 29 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 87
lea eax, qword ptr [rsi + rbx + 18]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], dx
neg dx
bts rdx, 24
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
cmovl rcx, rcx
setnle sil
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
imul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

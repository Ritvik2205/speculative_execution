.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
add bl, -127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
lea rsi, qword ptr [rdx]
bt rsi, 94
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
or eax, ecx
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
xor dil, cl
or rdx, 11
mov al, sil
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add sil, -121 # instrumentation
movsx ax, sil
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and bl, 89
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], bx
lea rax, qword ptr [rbx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
imul al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 81
jmp .bb_0.1
.bb_0.1:
setnb al
add bl, 93 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 44
btr eax, edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
movsx edi, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
mov dx, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

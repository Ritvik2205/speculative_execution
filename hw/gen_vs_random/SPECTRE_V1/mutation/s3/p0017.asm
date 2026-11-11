.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, -93 # instrumentation
not rdx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
lea cx, qword ptr [rax + rdi]
or esi, -74
sbb al, -107
setnp dl
movsx rbx, si
mov cl, al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
cmp eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

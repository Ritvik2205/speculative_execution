.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, si
sbb al, 33
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or esi, -74
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
mov cl, al
add cl, -93 # instrumentation
not rdx
lea cx, qword ptr [rax + rdi]
setnp dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
cmp eax, ebx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

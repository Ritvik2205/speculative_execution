.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
xor esi, 106
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 42
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
cmp eax, ebx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

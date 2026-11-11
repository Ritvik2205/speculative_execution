.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
xor cx, 67
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and dil, sil
cmovb rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -120
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and dil, 44
btc cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and al, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

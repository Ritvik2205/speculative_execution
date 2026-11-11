.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 20
and al, -115 # instrumentation
cmovl bx, ax
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
cmovo si, di
or dil, -52
or al, -8
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
xor sil, 46
or rdx, 22
btc bx, 179
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
and sil, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

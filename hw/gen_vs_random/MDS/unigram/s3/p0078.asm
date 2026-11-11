.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and si, -121
or ecx, ebx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
cmovz ax, ax
and bl, 68
btc rax, 110
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
or sil, dil
not bl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

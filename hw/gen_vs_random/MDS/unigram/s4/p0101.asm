.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
and sil, al
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
cmovp ax, bx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
btc bx, 179
and rax, -1378371328
cmovnz ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
cmovnp cx, di
xor cl, 93
test edi, 92
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rsi
cmovs ecx, ecx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 54
and dil, 122 # instrumentation
cmovnb rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

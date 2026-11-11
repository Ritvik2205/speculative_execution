.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -34 # instrumentation
cmovs rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 29
and si, bx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rcx]
btc ecx, 68
cmovb rax, rsi
xor dl, 34
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

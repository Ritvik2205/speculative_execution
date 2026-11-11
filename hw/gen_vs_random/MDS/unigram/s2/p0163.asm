.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and al, -10 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
bts ax, 22
and dl, sil
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and bl, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
and sil, -15 # instrumentation
cmovnp si, si
jmp .bb_0.1
.bb_0.1:
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 82
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and al, 67 # instrumentation
cmovl rcx, rdx
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
or cl, 119
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
bts ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

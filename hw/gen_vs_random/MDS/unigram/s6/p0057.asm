.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 1
or al, -58
and bl, -123 # instrumentation
cmovnp dx, bx
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
btc rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or cl, -77
xor al, -89
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
bt eax, edx
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
xor bl, al
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and dx, 3
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
or edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

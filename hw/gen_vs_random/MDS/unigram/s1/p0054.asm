.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
cmovbe bx, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
btr dx, dx
cmovnz cx, bx
or bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
cmovl rcx, rax
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
cmovnz esi, edi
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

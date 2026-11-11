.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
cmovle ebx, eax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
or rbx, -72
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
not dil
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and dl, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
cmovnbe cx, dx
bt edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
xor cx, -18
cmovnle rax, rdi
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 35
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
cmovnb rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
cmovno rdx, rdi
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 98
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
btr edi, ebx
btr cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
test dx, 16353
and rbx, 65
and al, -67 # instrumentation
cmovnle rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
cmovns edx, edi
or sil, cl
cmovl eax, eax
or cl, al
and dl, 21 # instrumentation
cmovb bx, dx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 25
cmovo edi, edx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
bt ax, di
btr rbx, 155
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

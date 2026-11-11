.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 51
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
bt dx, cx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
btr bx, 100
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
cmovnbe rdi, rdi
cmovnbe rax, rax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 99
cmovnp di, ax
cmovnp cx, dx
or bl, bl
bts dx, 50
and rax, rdx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and cl, 123 # instrumentation
cmovo dx, cx
test dl, 9
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 33
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
bt ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

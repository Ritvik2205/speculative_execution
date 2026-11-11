.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 37 # instrumentation
cmovnbe si, ax
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
btc bx, di
test ax, 18697
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
test eax, -409834435
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
or bl, 43
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
btc si, 99
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
bts dx, 50
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
cmovl esi, ebx
and eax, -574348013
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
test dx, 16353
btr ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

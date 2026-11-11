.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
xor rbx, -51
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
or dl, 22
xor ax, 24729
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
cmovnl esi, edi
btc rbx, rdx
bts rsi, 89
xor ax, 2053
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
cmovl rdx, rbx
jmp .bb_0.1
.bb_0.1:
or cl, al
btc rdx, 138
and al, bl
cmovnle eax, edx
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovbe ax, bx
and al, -115 # instrumentation
cmovl bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

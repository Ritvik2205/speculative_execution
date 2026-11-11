.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdx, rbx
xor rbx, -51
bts rsi, 89
xor ax, 24729
xor ax, 2053
cmovnl esi, edi
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
btc rbx, rdx
or dl, -18
jmp .bb_0.1
.bb_0.1:
cmovbe ax, bx
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovnle eax, edx
or cl, al
btc rdx, 138
and al, -115 # instrumentation
cmovl bx, ax
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

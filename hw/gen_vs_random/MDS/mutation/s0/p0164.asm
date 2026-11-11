.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl esi, edi
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
cmovl rdx, rbx
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
xor ax, 24729
btc rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
bts rsi, 89
xor ax, 2053
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
xor rbx, -51
or dl, -115
jmp .bb_0.1
.bb_0.1:
cmovnle eax, edx
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovbe ax, bx
btc rdx, 138
and al, bl
or cl, al
and al, -115 # instrumentation
cmovl bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

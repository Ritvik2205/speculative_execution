.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
btc rbx, rdx
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
bts rsi, 89
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
or dl, -18
cmovl rdx, rbx
xor ax, 24729
xor ax, 24729
xor rbx, -51
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
cmovnl esi, edi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
jmp .bb_0.1
.bb_0.1:
cmovbe ax, bx
btc rdx, 138
and al, -115 # instrumentation
cmovl bx, ax
and al, bl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
or cl, al
cmovnle eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

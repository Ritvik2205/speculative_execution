.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
xor ax, 2053
xor rbx, -51
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
btc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
xor ax, 2053
cmovl rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
cmovb si, di
bts rsi, 89
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btc rdx, 138
or dl, -18
xor al, 77
cmovs edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and al, 126
jmp .bb_0.2
.bb_0.2:
bts rsi, 89
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

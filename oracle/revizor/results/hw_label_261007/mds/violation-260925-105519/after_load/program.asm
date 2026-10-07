.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -115 
xor ax, 24729 
xor rbx, -51 
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx] 
lfence
btc rbx, rdx 
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi] 
lfence
xor ax, 2053 
cmovl rdx, rbx 
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0 
lfence
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx] 
lfence
cmovnl esi, edi 
bts rsi, 89 
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi] 
lfence
jmp .bb_0.1 
.bb_0.1:
btc rdx, 138 
and al, -115 # instrumentation
cmovl bx, ax 
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax] 
lfence
cmovbe ax, bx 
cmovnle eax, edx 
and al, bl 
or cl, al 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

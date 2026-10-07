.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -115 
lfence
xor ax, 24729 
lfence
xor rbx, -51 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or rbx, qword ptr [r14 + rcx] 
lfence
btc rbx, rdx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
not word ptr [r14 + rdi] 
lfence
xor ax, 2053 
lfence
cmovl rdx, rbx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock btr qword ptr [r14 + rdi], 0 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and rax, qword ptr [r14 + rdx] 
lfence
cmovnl esi, edi 
lfence
bts rsi, 89 
lfence
and bl, 52 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnle edx, dword ptr [r14 + rdi] 
lfence
jmp .bb_0.1 
.bb_0.1:
btc rdx, 138 
lfence
and al, -115 # instrumentation
lfence
cmovl bx, ax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovl rax, qword ptr [r14 + rax] 
lfence
cmovbe ax, bx 
lfence
cmovnle eax, edx 
lfence
and al, bl 
lfence
or cl, al 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

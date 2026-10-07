.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rsi], dl 
lfence
cmovnle ecx, esi 
lfence
xor bl, cl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovle esi, dword ptr [r14 + rbx] 
lfence
cmovnb bx, bx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or rsi, qword ptr [r14 + rdi] 
lfence
cmovp esi, esi 
lfence
cmovs edx, edx 
lfence
or ax, 28091 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnle ebx, dword ptr [r14 + rax] 
lfence
jmp .bb_0.1 
.bb_0.1:
and dl, 60 # instrumentation
lfence
cmovno edi, edi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rbx], 91 
lfence
or rbx, -124 
lfence
and al, 126 
lfence
cmovnl ebx, edi 
lfence
and bx, -21 
lfence
and rax, -1378371328 
lfence
cmovns eax, eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnb edx, dword ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovbe rdx, qword ptr [r14 + rcx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

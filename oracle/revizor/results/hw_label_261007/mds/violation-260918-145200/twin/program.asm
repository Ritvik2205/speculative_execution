.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rsi], dl 
cmovnle ecx, esi 
xor bl, cl 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovle esi, dword ptr [r14 + rbx] 
cmovnb bx, bx 
and rdi, 0b1111111111111 # instrumentation
lfence
or rsi, qword ptr [r14 + rdi] 
cmovp esi, esi 
cmovs edx, edx 
or ax, 28091 
and rax, 0b1111111111111 # instrumentation
lfence
cmovnle ebx, dword ptr [r14 + rax] 
jmp .bb_0.1 
.bb_0.1:
and dl, 60 # instrumentation
cmovno edi, edi 
and rbx, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rbx], 91 
or rbx, -124 
and al, 126 
cmovnl ebx, edi 
and bx, -21 
and rax, -1378371328 
cmovns eax, eax 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnb edx, dword ptr [r14 + rcx] 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovbe rdx, qword ptr [r14 + rcx] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

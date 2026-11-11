.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
cmovs edx, edx
xor bl, cl
cmovnle ecx, esi
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or ax, 6575
cmovnb bx, bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and bx, -21
cmovns eax, eax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
or rbx, -124
and dl, 60 # instrumentation
cmovno edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rax, -1909598591
and al, 73
cmovnl ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

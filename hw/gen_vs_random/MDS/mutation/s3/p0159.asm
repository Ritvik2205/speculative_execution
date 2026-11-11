.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs edx, edx
or ax, 6575
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovnb bx, bx
cmovp esi, esi
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovnle ecx, esi
jmp .bb_0.1
.bb_0.1:
cmovnl ebx, edi
or rbx, -124
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and al, 73
and dl, 60 # instrumentation
cmovno edi, edi
and bx, -21
and rax, -1909598591
cmovns eax, eax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

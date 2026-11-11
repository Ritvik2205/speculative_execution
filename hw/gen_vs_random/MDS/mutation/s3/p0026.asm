.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovp esi, esi
or ax, -4635
xor bl, cl
cmovnb bx, bx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
cmovs edx, edx
cmovnle ecx, esi
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and al, -56
and rax, -1909598591
and dl, 60 # instrumentation
cmovno edi, edi
cmovnl ebx, edi
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
cmovns eax, eax
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and bx, -21
or rbx, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

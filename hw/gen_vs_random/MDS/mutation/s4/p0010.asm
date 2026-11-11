.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
cmovnle ecx, esi
cmovnb bx, bx
cmovp esi, esi
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or ax, 19243
cmovs edx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and dl, 60 # instrumentation
cmovno edi, edi
cmovns eax, eax
and rax, -1909598591
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and bx, -21
or rbx, -124
cmovnl ebx, edi
and al, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

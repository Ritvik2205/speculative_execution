.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs edx, edx
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovp esi, esi
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovnle ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
or ax, 6575
cmovnb bx, bx
jmp .bb_0.1
.bb_0.1:
and al, 126
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
cmovnl ebx, edi
or rbx, -124
and dl, 60 # instrumentation
cmovno edi, edi
and rax, -1378371328
cmovns eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and bx, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

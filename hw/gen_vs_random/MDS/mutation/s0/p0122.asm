.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb bx, bx
or ax, 6575
cmovp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
xor bl, cl
cmovnle ecx, esi
cmovs edx, edx
jmp .bb_0.1
.bb_0.1:
and al, -37
and dl, 60 # instrumentation
cmovno edi, edi
and rax, -1378371328
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and bx, -21
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
cmovns eax, eax
or rbx, -124
cmovnl ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

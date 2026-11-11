.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovnle ecx, esi
cmovp esi, esi
xor bl, cl
cmovnb bx, bx
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmovs edx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or ax, 28091
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and al, 73
cmovnl ebx, edi
and dl, 60 # instrumentation
cmovno edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, -1378371328
or rbx, -124
and bx, -21
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
cmovns eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

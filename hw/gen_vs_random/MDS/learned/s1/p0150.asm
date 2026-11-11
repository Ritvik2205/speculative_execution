.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovnle ecx, esi
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
cmovnb bx, bx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovp esi, esi
cmovs edx, edx
or ax, -4635
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dl, 60 # instrumentation
cmovno edi, edi
and bx, -21
or rbx, -124
and al, 126
cmovnl ebx, edi
and bx, -21
and rax, -1909598591
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
test rax, 1732677821
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

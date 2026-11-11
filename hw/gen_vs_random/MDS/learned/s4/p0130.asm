.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 80
or ax, 19243
cmovl rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
or dl, 22
test cl, cl
and bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
or ax, -4635
cmovs edi, ebx
cmovo rbx, rsi
and al, 73
cmovo dx, cx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

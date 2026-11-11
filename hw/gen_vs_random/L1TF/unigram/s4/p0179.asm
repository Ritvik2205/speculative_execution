.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
lea ecx, qword ptr [rdi + rdi + 22]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
btc bx, cx
cmovle eax, ecx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
jmp .bb_0.1
.bb_0.1:
and dx, 78
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
lea eax, qword ptr [rbx + rax]
btc eax, 220
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
mov dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
lea eax, qword ptr [rdi]
inc edi
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
cmovnl rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
dec ax
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 46
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 49
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
sub edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

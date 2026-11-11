.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
inc al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
dec ax
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and sil, cl
lea rbx, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rbx + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 3
cmp si, 61
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and cl, 89
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

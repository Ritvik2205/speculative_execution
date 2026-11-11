.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, si
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi]
lea edx, qword ptr [rbx + rax]
dec esi
lea edi, qword ptr [rdx + rdi + 61]
add al, al
nop
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
or bl, 114
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
dec eax
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
cmovb ax, di
xchg edi, eax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 87
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
lea eax, qword ptr [rsi + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnb edi, eax
sub ax, 19828
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

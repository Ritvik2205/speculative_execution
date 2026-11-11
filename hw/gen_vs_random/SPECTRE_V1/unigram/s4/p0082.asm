.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, 57
sub dl, sil
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
cmovnbe bx, cx
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
setno cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
test dl, 62
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

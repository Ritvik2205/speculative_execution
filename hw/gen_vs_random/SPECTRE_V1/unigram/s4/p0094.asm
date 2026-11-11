.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ecx, ecx
or cx, 49
lea rsi, qword ptr [rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
imul ecx, esi
adc rdi, -75
movsx dx, cl
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
bt rcx, 50
lea rdx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 11
xor ax, -2537
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

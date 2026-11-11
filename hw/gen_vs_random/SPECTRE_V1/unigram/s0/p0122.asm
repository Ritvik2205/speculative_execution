.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, di
btr rax, rsi
imul dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 62
mov bl, bl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rax + rsi]
lea rdx, qword ptr [rbx + rax + 59]
adc dl, 10
movzx di, cl
adc rcx, 7
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

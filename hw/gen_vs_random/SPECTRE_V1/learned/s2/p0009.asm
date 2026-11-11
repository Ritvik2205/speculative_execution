.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
lea eax, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
sub al, dil
xor ecx, 58
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sub al, bl
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

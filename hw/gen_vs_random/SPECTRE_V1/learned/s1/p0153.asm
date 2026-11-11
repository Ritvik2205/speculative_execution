.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
lea rcx, qword ptr [rdx]
cmovnbe rbx, rsi
xor rsi, 73
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
xor edi, esi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 19
add rax, 1503210561
adc rsi, rdx
cmovl eax, edx
xor rsi, 73
test dil, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rax]
cmp si, 64
not dx
add al, 39 # instrumentation
cmovnb ax, bx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
seto cl
cmovnz si, dx
sub al, -75
lea eax, qword ptr [rcx]
adc bl, 86
jmp .bb_0.1
.bb_0.1:
xor edi, ebx
not ebx
setb al
sbb ax, si
lea ecx, qword ptr [rax + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

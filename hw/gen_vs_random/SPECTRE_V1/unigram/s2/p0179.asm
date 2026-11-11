.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, al
cmovbe rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
adc cx, -30
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
cmovb cx, si
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
add cl, 107 # instrumentation
lea edx, qword ptr [rax + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setnb cl
lea si, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
mov dl, cl
lea rbx, qword ptr [rdx + rdx]
sub dl, 96
or dil, 80
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

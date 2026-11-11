.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb dil
adc dil, al
test ax, -30637
cmp bl, al
or dl, cl
sub cl, bl
mul rbx
sbb al, -114
adc bl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rbx + rdi + 52277]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
btc bx, 118
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rbx
sbb al, 104
adc bl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
test ax, -30637
setnb dil
or dl, cl
adc dil, al
sub cl, bl
cmp bl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
btc bx, 118
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
add dl, 47
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
lea ebx, qword ptr [rbx + rdi + 52277]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

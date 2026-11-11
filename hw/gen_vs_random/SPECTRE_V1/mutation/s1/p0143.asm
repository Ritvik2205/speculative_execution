.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -107
adc dil, al
adc bl, al
mul rbx
cmp bl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
setnb dil
test ax, 19339
or dl, cl
sub cl, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
btc bx, 118
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
lea ebx, qword ptr [rbx + rdi + 52277]
add dl, 47
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

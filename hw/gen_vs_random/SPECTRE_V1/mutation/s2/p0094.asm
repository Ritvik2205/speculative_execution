.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, al
cmp bl, al
adc dil, al
setnb dil
test ax, -13885
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
mul rbx
sub cl, bl
sbb al, -114
or dl, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
lea ebx, qword ptr [rbx + rdi + 52277]
add dl, 47
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
btc bx, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

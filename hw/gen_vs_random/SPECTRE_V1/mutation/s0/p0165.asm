.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
sbb al, 33
adc bl, al
cmp bl, al
setnb dil
sub cl, bl
or dl, cl
adc dil, al
mul rbx
test ax, -13885
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rbx + rdi + 52277]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
add dl, 47
btc bx, 118
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

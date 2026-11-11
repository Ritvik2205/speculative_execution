.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, al
mul rbx
sub cl, bl
adc dil, al
adc bl, al
setnb dil
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
sbb al, -114
test ax, 636
or dl, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rbx + rdi + 52277]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
btc bx, 118
add dl, 47
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
test bl, 110
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and dil, -23
adc cl, al
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
mov dl, cl
test ebx, 35
add bl, al
xor ax, 13332
not dil
test rdx, -1074289902
jmp .bb_0.1
.bb_0.1:
xor dil, 37
sub al, 26
and dl, cl
xor ax, 13329
sub rcx, -99
adc cl, -86
mov bl, al
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

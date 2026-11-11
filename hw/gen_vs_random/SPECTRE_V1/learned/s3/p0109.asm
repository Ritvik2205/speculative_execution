.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
test al, 84
test al, 59
sub al, -1
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and sil, 111
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor ax, 913
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
setno dil
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
sbb al, sil
or edx, 53
sub al, -47
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
add al, 56
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
add cl, dil
or sil, -44
xor bl, dil
add sil, al
cmovnbe si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

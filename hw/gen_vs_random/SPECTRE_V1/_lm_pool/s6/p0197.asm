.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
lea dx, qword ptr [rdx]
sub dl, cl
cmp sil, 25
add dil, 72
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ebx, qword ptr [rax]
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea rax, qword ptr [rdi + rdx + 49]
add al, 18
jmp .bb_0.4
.bb_0.4:
bswap rsi
sbb dl, 127
sbb rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
xchg dl, bl
or cl, dil
or dl, -92
sbb bl, -88
lea dx, qword ptr [rsi + rdi + 47468]
jmp .bb_0.1
.bb_0.1:
add al, bl
jmp .bb_0.2
.bb_0.2:
lea ecx, qword ptr [rax]
mov dil, bl
add al, -102
test al, -32
xor dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 48
xor bl, 38
cmp al, bl
cmp al, bl
dec dil
test al, -104
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rbx + rax + 70]
jmp .bb_0.3
.bb_0.3:
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

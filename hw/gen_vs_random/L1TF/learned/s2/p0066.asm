.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
or al, -2
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
or sil, bl
jmp .bb_0.2
.bb_0.2:
lea rcx, qword ptr [rax + rsi + 91]
lea rax, qword ptr [rdx]
jmp .bb_0.3
.bb_0.3:
cmp dx, 6
test ax, 636
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

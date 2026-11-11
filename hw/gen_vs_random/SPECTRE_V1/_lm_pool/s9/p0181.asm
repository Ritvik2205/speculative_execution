.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
xor al, al
xor ecx, 26
cmp rcx, 47
not bx
lea di, qword ptr [rdx + rbx]
jmp .bb_0.1
.bb_0.1:
test al, bl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
xor bl, dl
test bl, -9
or al, 37
xor al, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and dil, cl
bt rax, 86
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test rax, 1949278494
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

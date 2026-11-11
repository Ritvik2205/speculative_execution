.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
test al, 127
test al, 66
jmp .bb_0.1
.bb_0.1:
test bl, -14
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 36
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 1886208862
or al, -17
and rax, -2039117613
xor bl, -102
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
test rax, 1978892575
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

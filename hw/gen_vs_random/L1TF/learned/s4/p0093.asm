.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -32
xchg edx, esi
jmp .bb_0.1
.bb_0.1:
sbb ax, -14164
sub bl, -96
or sil, cl
cmp ax, 24210
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
inc rcx
or al, bl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

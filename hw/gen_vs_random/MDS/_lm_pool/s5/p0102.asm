.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test dil, -80
or sil, -49
test al, -81
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and cx, -2
xor rdi, -9
xor cl, 83
xor ax, -1005
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

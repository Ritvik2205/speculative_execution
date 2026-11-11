.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, -82
or sil, -44
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
cmp rdi, 20
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rcx]
cmp bl, 123
and di, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

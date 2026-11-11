.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and al, -68
jmp .bb_0.2
.bb_0.2:
test bl, -92
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

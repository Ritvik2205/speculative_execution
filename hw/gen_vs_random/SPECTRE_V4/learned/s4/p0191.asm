.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
sub bl, -89
xor al, cl
test cx, 7280
cmovno rcx, rsi
or al, al
sub al, 26
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
cmp dil, al
inc ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
dec cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
add al, -72
jmp .bb_0.1
.bb_0.1:
cmp al, cl
test al, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

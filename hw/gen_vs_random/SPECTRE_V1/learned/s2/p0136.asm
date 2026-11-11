.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 19
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
dec al
cmp bl, cl
lea di, qword ptr [rcx + rbx + 54]
test sil, 47
and bl, 87
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

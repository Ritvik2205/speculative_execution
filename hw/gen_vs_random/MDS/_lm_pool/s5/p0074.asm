.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 71
test rax, 1207043993
or dl, 51
bt bx, ax
or dil, cl
xor rax, -345061362
or al, 24
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and dl, -73
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, -7
xor ax, -4010
and dl, -73
test cl, 62
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

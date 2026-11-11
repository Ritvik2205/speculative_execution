.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
test al, bl
and rdx, 65
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and di, 91
bt dx, cx
xor ax, -12492
bt cx, si
test sil, 41
test bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

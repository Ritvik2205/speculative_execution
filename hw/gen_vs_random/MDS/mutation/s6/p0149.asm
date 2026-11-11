.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
or bl, -54
test sil, 17
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or rax, 1020005579
xor cl, al
xor ax, -12492
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
btc rbx, 35
xor ax, -4010
not al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
btr edx, 255
cmovp di, dx
btr ax, 193
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rcx, -63
test dl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

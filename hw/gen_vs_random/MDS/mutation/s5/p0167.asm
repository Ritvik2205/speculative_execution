.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -1523798580
or bl, bl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
xor ax, -12492
or bl, -52
xor ax, 23633
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test sil, -55
btc rbx, 102
not al
xor cl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovp di, dx
test dl, bl
btr edx, 255
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rcx, -63
btr ax, 193
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

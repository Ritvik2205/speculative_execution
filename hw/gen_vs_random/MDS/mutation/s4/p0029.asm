.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or bl, -52
xor ax, -4010
xor cl, al
test sil, 17
xor ax, -12492
not al
or rax, 1020005579
or bl, bl
btc rbx, 102
jmp .bb_0.1
.bb_0.1:
btr edx, 197
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
test dl, bl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
btr ax, 193
cmovp di, dx
and rcx, 107
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

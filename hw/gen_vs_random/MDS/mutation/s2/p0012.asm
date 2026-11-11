.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -23364
or rax, 1461812833
test sil, -55
xor ax, -23364
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or bl, bl
btc rbx, 102
or bl, -125
not al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor cl, al
jmp .bb_0.1
.bb_0.1:
test dl, bl
btr ax, 193
and rcx, 107
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
cmovp di, dx
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
btr edx, 197
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

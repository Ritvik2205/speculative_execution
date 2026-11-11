.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, 35
xor ax, -23364
xor cl, al
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or rax, 1020005579
xor ax, -5889
not al
test sil, 17
or bl, bl
or bl, -52
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dl, bl
cmovp di, dx
btr edx, 197
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
btr ax, 193
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rcx, 107
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

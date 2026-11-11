.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
not al
xor cl, al
test sil, 17
btc rbx, 102
xor ax, -1005
or bl, -62
or bl, bl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor ax, -1005
or rax, 1020005579
jmp .bb_0.1
.bb_0.1:
test dl, bl
btr edx, 255
and rcx, -63
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
btr ax, 193
cmovp di, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

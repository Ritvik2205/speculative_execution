.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test sil, -96
or bl, bl
xor ax, -23364
xor ax, -16696
not al
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
xor cl, al
or bl, 100
or rax, -1523798580
btc rbx, 102
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovp di, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rcx, 107
test dl, bl
btr ax, 193
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
btr edx, 255
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

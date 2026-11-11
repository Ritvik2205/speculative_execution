.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -141551502
xor ax, -5889
or bl, bl
not al
test sil, 17
xor cl, al
xor ax, -6793
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
or bl, -54
btc rbx, 102
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
test dl, bl
and rcx, -63
cmovp di, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
btr edx, 255
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
btr ax, 193
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

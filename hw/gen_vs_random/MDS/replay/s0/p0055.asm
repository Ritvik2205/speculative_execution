.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
not al
or bl, bl
xor ax, -6793
or bl, -125
xor cl, al
btc rbx, 102
or rax, 52
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor ax, -23364
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
cmovp di, dx
test dl, bl
btr ax, 193
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
btr edx, 197
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, -63
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

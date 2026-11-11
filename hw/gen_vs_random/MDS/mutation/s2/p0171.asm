.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
xor cl, al
xor ax, 31969
not al
or bl, bl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor ax, -1005
test sil, 41
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
btc rbx, 102
or rax, 302048971
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
btr ax, 193
test dl, bl
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
cmovp di, dx
btr edx, 197
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, 107
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

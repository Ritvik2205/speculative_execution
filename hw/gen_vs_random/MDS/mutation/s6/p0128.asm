.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -1561934807
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
xor cl, al
or bl, -52
xor ax, -6793
test sil, 17
xor ax, 31969
or bl, bl
not al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
btc rbx, 35
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovp di, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
btr ax, 193
and rcx, -63
btr edx, 197
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

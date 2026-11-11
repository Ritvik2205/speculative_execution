.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
test al, bl
xor sil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
jmp .bb_0.2
.bb_0.2:
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

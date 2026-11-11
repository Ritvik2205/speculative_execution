.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
xor sil, 64
not eax
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovl rax, rax
test dil, -126
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
add al, 74
xor ax, -24879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

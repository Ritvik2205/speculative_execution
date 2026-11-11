.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
xor cl, -13
xor ebx, 4
bts ax, dx
or al, 74
jmp .bb_0.1
.bb_0.1:
test cl, 101
or bl, -125
test al, 22
and al, 14
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 64
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and edx, -44
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

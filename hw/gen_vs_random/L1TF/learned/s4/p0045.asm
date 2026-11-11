.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
cmovno dx, ax
lea rcx, qword ptr [rsi + rbx + 34]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
test ebx, 58
test dil, -126
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
add dil, al
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

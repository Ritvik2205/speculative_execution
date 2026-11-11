.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rax + rax + 9]
lea rdx, qword ptr [rdi + rdi]
adc bl, dil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or ax, 19104
add cl, 83 # instrumentation
setbe bl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
lea ecx, qword ptr [rsi + rdi + 32]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, cl
cmp rcx, 12
cmovnl ebx, ecx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
add dx, -103
add bl, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
test rsi, -1408527332
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -26
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
setnb bl
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], dx
sub ecx, 71
jmp .bb_0.1
.bb_0.1:
add cl, -41 # instrumentation
adc di, bx
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
cmovnbe rsi, rcx
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
dec edx
cmovno rdi, rcx
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

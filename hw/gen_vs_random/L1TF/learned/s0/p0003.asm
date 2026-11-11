.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 32579
add ax, 66
and rdi, -60
sub al, bl
cmovp rcx, rax
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 98
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rax, rcx
jmp .bb_0.2
.bb_0.2:
add cl, 102 # instrumentation
sbb si, dx
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and si, di
and al, 76
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

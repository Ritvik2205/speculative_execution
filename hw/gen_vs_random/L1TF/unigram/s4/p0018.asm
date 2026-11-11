.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap edx
cmovnz cx, si
cmovnle bx, bx
sub rcx, -90
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
add cl, bl
and cx, 127
sub rsi, rbx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
sbb dx, cx
setnb cl
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
sbb rsi, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

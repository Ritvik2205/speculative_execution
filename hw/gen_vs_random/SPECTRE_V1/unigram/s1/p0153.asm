.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
lea di, qword ptr [rdx + rbx]
adc dl, bl
sub sil, -55
lea edx, qword ptr [rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
sbb dl, al
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
add cl, 97 # instrumentation
adc cx, bx
adc rdx, 35
xor al, bl
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
imul bl
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

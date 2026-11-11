.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
not al
xor cl, bl
lea bx, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
sub al, -82
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
cmovb cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

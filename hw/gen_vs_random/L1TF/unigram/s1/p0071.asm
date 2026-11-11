.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
xor dl, dil
xor si, -50
add edx, edi
cmovp ax, dx
xchg rcx, rax
add dl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
add di, 87
cmovb si, ax
add cl, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
sub dl, bl
add cl, cl
sbb di, si
btc ebx, edi
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
test ax, 7679
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rdi
or dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
cmovo bx, si
sub edi, edx
jmp .bb_0.1
.bb_0.1:
add dl, -123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
lea cx, qword ptr [rax + rcx + 3]
lea dx, qword ptr [rcx]
xor cl, cl
mov dil, 69
adc rdi, 127
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax]
cmovle rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

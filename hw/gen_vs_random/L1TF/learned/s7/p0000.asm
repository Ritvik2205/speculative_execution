.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
add dil, 88
btr dx, ax
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
or bl, -5
test dl, -37
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
sub dl, -49
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

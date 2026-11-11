.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rax, -109
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 38
cmovb ecx, edx
jmp .bb_0.1
.bb_0.1:
test al, 15
lea si, qword ptr [rax + rsi + 27]
sub rax, 1715032616
cmovb cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

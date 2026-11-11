.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
sub dil, -39
and bl, bl
jmp .bb_0.1
.bb_0.1:
xor si, -50
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 80
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 41
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

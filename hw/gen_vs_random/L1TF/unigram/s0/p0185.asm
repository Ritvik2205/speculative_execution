.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
or eax, ebx
inc al
add al, 74
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
lea ebx, qword ptr [rax + rdx + 2427]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
cmp dx, cx
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
test al, -56
sbb cx, 39
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
imul rsi, rbx, 44
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

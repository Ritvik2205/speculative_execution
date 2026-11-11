.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
lea ax, qword ptr [rsi + rdi]
cmovnl dx, cx
jmp .bb_0.1
.bb_0.1:
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
lea rsi, qword ptr [rax + rbx + 98]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, 31
add cl, -38 # instrumentation
setbe bl
xor bx, 7
sbb dil, dl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
add bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
test sil, 97
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
not dl
lea cx, qword ptr [rcx + rax]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

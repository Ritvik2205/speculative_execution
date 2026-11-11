.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
test dl, -37
or cl, 105
imul sil
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
add dil, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 25
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
jmp .bb_0.1
.bb_0.1:
dec cl
add dil, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
cmovnbe cx, ax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
sbb esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

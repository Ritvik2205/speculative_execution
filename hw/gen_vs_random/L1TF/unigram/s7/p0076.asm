.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
btr ecx, 3
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
cmovnbe rbx, rdi
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 94
sbb cx, 84
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
lea rax, qword ptr [rax + rdi + 86]
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
sub cl, dl
dec dil
xchg dx, cx
mov bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

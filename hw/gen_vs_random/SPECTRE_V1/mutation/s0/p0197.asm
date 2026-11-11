.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
adc cl, cl
add dl, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
cmovo ebx, esi
add cl, 97 # instrumentation
adc di, bx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
test rax, -1704969603
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
sub sil, -55
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

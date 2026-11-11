.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
add sil, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 13
test bl, -8
cmovle bx, dx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
test cl, -33
lea si, qword ptr [rdx + rax]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rax
sbb bl, cl
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
cmovz rsi, rax
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

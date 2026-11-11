.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 2
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
add bl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
cmp sil, 25
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

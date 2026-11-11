.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 77
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
sbb bl, -88
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
test dil, bl
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rdi + rsi]
setb al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
cmovnz rsi, rax
adc dl, -12
test ax, 636
lea edx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

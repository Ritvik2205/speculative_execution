.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 80
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
setb cl
sbb di, 80
sub si, 83
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
and ebx, 108
xor dx, 2
add bl, bl
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

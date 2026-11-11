.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
add cl, 108 # instrumentation
setl cl
lea rdi, qword ptr [rdi + rcx]
cmovz rdx, rcx
mov bl, 35
sub dil, 87
or al, dl
xchg si, bx
jmp .bb_0.1
.bb_0.1:
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
lea ebx, qword ptr [rdi + rbx]
and dil, -22
xor edi, edx
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

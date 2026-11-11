.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
xor cl, 89
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 96
sub cl, 86
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or al, dl
lea eax, qword ptr [rcx + rdi]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
bts ebx, 47
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rsi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

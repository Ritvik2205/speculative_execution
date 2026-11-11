.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
sub al, -75
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
cmp ax, -4865
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
lea eax, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or dx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

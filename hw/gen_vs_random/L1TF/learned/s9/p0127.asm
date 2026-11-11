.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 57
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
lea edi, qword ptr [rax + rax + 89]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 55
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test eax, 899472326
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
lea di, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
lea rcx, qword ptr [rdi + rax + 28]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

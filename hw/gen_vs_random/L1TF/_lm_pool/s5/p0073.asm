.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 81
test eax, 899472326
jmp .bb_0.1
.bb_0.1:
test cl, 21
cmp al, 27
sub al, cl
jmp .bb_0.2
.bb_0.2:
test rax, rdx
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
test sil, 29
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 16
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 45
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
or esi, 68
btc ax, cx
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor al, dil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
test al, -82
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
sub dl, 41
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

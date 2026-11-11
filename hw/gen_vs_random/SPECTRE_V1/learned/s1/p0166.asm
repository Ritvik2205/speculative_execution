.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
cmp eax, 692647572
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
test bl, -8
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
and al, -23
neg rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

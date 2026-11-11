.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 53
cmp di, 45
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
test rax, 404297506
cmp ax, -14781
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 22
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

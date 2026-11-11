.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
test bl, -9
or cl, dil
xor al, 8
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or dl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test eax, -571234566
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
or dl, -89
and rax, -2058103810
jmp .bb_0.3
.bb_0.3:
xor cx, -18
and rdi, 7
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
bt bx, di
and cl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

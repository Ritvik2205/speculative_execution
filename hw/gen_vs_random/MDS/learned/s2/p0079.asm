.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
and bl, 68
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bt ax, si
xor bl, -61
test sil, cl
or dx, 125
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
xor cx, -18
and dil, -62
btr rsi, 207
test dil, dl
or al, -24
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

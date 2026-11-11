.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
or cl, -77
test sil, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
bts rsi, 205
test al, cl
bt ax, cx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test dil, -80
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
bt cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

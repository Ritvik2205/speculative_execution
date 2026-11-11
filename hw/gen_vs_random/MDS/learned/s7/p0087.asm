.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test dil, -51
xor dl, 40
btr cx, dx
xor al, -4
xor di, -83
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and ecx, -104
xor al, 55
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
or ax, 16560
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sub al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 32
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or ax, -11837
or al, -75
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
xor dil, al
or ax, -4210
jmp .bb_0.1
.bb_0.1:
or ax, 85
and rdi, 13
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

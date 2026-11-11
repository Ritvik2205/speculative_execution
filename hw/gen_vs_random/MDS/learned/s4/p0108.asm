.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rax, 4
or rax, 52
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor rcx, 71
xor bl, -27
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
or sil, bl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 97
test bl, -9
xor al, 122
btc si, 99
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

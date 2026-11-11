.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -126
or dil, bl
xor sil, -126
or al, cl
or sil, -78
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or si, -12
or sil, -49
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor dl, -19
bt ax, dx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
xor bl, -61
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

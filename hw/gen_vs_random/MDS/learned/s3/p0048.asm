.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 24
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

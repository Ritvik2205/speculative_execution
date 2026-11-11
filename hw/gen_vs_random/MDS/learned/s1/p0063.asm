.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
or al, cl
or rdx, -109
xor dil, bl
test al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
jmp .bb_0.1
.bb_0.1:
or al, -24
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
btr ax, dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

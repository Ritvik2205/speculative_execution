.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or eax, -900576213
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 71
test bl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test bx, 4954
jmp .bb_0.2
.bb_0.2:
and dil, -62
or dil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
lea rax, qword ptr [rbx]
not dil
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or al, 30
or al, -22
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

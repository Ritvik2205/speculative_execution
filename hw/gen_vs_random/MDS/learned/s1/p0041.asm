.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 11
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or bl, 100
or cl, 7
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and cl, -71
and al, dl
test edx, -372470678
jmp .bb_0.1
.bb_0.1:
test sil, bl
test al, dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
xor al, 8
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

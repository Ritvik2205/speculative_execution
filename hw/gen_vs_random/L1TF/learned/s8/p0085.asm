.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 45
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmp al, -119
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
xor al, 89
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, 15
sbb al, cl
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

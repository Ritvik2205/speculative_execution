.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
sbb sil, -19
xor al, bl
sbb dil, 40
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
sbb dil, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
and di, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

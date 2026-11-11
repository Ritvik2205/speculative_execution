.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -6793
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 16
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
xor dil, -70
xor ax, 31969
or al, 16
or al, cl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and cl, -19
test dil, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

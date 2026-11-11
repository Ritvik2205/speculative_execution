.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
cmp eax, -240917296
sbb dil, cl
or al, dl
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
sbb ebx, 27
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
sbb rdx, -34
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

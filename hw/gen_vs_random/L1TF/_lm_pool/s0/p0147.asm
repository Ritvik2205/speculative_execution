.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
or eax, 1495028166
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sbb dil, al
cmp al, 56
add cl, dl
and al, dl
jmp .bb_0.2
.bb_0.2:
mov dl, cl
or al, -5
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

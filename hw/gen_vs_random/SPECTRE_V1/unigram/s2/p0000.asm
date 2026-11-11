.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
cmp cx, 93
cmovbe rdx, rax
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
add cl, -36
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
inc cx
setnle al
setns sil
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
setno al
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], si
or sil, dl
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

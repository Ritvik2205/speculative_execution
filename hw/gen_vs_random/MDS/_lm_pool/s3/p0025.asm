.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
xor al, 99
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
test al, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
test sil, al
or sil, -78
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

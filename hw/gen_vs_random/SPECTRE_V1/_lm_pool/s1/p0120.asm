.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
sbb sil, dl
xor sil, sil
or al, 100
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
add al, al
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

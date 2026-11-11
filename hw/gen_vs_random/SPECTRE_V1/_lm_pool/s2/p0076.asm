.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
cmp dil, dl
lea rcx, qword ptr [rax + rdx + 34]
or al, 19
setnb dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, cl
bt eax, ecx
movsx si, al
add dil, al
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

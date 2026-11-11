.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
test cl, dl
test eax, -571234566
or sil, dil
or al, cl
xor dl, sil
or rcx, 54
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and bl, al
jmp .bb_0.1
.bb_0.1:
or al, cl
or al, 54
test cx, 401
or al, bl
and bl, 68
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

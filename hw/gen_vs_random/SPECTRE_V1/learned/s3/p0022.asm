.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmp bl, al
test edi, 40
cmp rbx, 7
or dil, 80
and al, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test al, 84
jmp .bb_0.1
.bb_0.1:
xor al, -74
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 41
and al, cl
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

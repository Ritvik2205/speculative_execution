.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
test ecx, -1843375753
not bl
xor bl, -88
jmp .bb_0.1
.bb_0.1:
or dil, -41
or al, -61
and al, -8
and dil, -62
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
not cl
and cx, -8
xor si, 80
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and eax, 461212071
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

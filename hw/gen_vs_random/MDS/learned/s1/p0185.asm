.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and dil, al
test al, 22
or al, -58
or al, -24
and dl, dl
or sil, -49
jmp .bb_0.1
.bb_0.1:
and bl, cl
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
xor al, -19
or bl, bl
or al, bl
jmp .bb_0.2
.bb_0.2:
and rax, 498847670
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

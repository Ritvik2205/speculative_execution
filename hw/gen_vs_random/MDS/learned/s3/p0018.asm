.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 13
bts rdi, 130
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor al, -26
test edi, -1252846009
test bl, -14
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
xor al, -89
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or al, 74
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 25
and al, dl
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

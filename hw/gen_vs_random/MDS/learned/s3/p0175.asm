.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 27
or edx, -1
jmp .bb_0.1
.bb_0.1:
or dil, -41
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
xor al, 55
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
or bl, 127
jmp .bb_0.2
.bb_0.2:
xor al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and al, al
or dl, -31
or al, -75
or bl, -62
or al, dil
or rax, -141551502
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 31969
or rax, 1461812833
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or al, 25
and cl, cl
or sil, cl
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or al, dl
xor dl, dil
xor al, sil
xor al, -19
test al, 127
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 75
and al, 75
xor dl, dil
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

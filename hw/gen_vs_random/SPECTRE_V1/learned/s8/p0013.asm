.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and dil, cl
and al, 33
and al, -54
or cl, dl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 77
test al, sil
and dl, al
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 82
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

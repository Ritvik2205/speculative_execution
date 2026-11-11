.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -41
and eax, 366961170
jmp .bb_0.1
.bb_0.1:
and al, sil
xor dl, cl
or al, -17
xor sil, dil
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
cmovnp rdi, rbx
xor cl, 24
xor rax, -843636050
or dl, 85
not al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

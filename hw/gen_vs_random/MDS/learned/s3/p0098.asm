.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor dil, -70
xor dl, sil
or al, dil
or rdi, -11
and al, sil
or ax, -11837
and al, 106
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
test eax, 343548072
btr eax, ecx
and al, 75
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

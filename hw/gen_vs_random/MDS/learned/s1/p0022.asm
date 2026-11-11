.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 28
or sil, dil
and sil, dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and al, 49
test cl, sil
and rax, 79
test eax, 1838539683
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

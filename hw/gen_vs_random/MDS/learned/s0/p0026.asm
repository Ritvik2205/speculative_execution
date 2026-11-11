.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
test eax, 424329527
xor rdi, -9
xor cl, dl
or al, al
and dx, 3
and al, 14
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
or al, sil
test bl, -14
xor al, sil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

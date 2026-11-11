.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
test bl, 65
and sil, sil
or al, -75
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
xor bl, -27
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
test al, 91
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
test rcx, -613256812
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

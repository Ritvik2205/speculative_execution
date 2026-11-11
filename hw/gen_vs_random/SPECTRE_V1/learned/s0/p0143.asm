.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
add bl, dil
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and dl, sil
and al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
sub rax, rdx
sbb al, sil
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

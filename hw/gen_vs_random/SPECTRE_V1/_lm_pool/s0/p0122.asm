.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 29
test bl, -8
xor al, al
and al, -54
and dl, -109
sbb dil, dl
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 4
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
sub cl, bl
inc sil
cmp ax, 7452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

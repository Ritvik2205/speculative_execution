.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and dx, 67
and sil, 37
sbb dil, al
bts di, 41
xor al, dl
xor dx, 32
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
sub al, 26
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 22
add bl, cl
and cl, -57
setz dl
sub bl, sil
sbb dl, 127
xor bl, -38
sub al, bl
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add al, al
adc sil, -77
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
xchg rdi, rcx
and dl, 24
adc al, 41
add cl, dl
xchg al, cl
sbb al, -43
mov dl, dil
or cl, al
xor ax, 13332
or edx, 0
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and dl, al
or al, 27
sub cl, dl
sub sil, dil
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

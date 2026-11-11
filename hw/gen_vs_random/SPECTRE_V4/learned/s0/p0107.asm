.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov cl, bl
add bl, cl
add rax, -874478885
neg sil
cmovno rbx, rdi
sub al, 29
cmp bl, dl
and dl, bl
or cl, -55
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
mov dil, cl
add dil, -61
or rax, -823069511
and al, -124
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
xor bl, -126
or dil, 5
xor cl, dil
sbb dil, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

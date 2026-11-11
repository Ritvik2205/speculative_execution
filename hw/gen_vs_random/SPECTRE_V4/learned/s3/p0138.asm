.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -70
add bl, dl
xor al, -40
or rax, 980130592
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
test eax, 1947430392
cmp bl, cl
dec al
sub al, sil
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
sbb sil, 24
sub bl, dil
not dl
test bl, sil
sub dl, -16
mov dl, dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
xor di, 81
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

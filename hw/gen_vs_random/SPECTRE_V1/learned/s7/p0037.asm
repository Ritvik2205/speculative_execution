.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -109
and sil, dl
sub dl, bl
and rax, 1713273566
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 64
sub bl, al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
sbb eax, -108
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 88
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
imul rax, rsi, 12
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

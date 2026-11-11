.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -90
cmovnp ax, si
cmp rdx, -49
test dil, 64
cmp al, sil
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and cl, 126
add al, cl
test cx, 19367
xchg ax, di
and dil, bl
sbb cl, 12
and bl, -30
cmp al, 109
and al, 49
adc dil, -15
dec bl
sub cl, -32
sub edi, 82
mov al, dl
test cl, -31
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
add eax, 544045319
mov bl, dl
sbb al, -4
sub dil, bl
sub bl, cl
add bl, dl
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

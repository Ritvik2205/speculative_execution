.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
dec bl
adc sil, dl
test al, 18
sbb dl, -62
or bl, -86
xor dl, al
cmp di, -8
test dil, cl
cmovle rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and dl, cl
xor ebx, 40
sbb al, -43
sbb al, 57
cmp al, -122
btc rax, rsi
and cl, al
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
xor al, -120
xor al, -120
cmp dl, dil
adc sil, bl
add al, -99
movsx ax, sil
cmp cl, dil
and cl, dl
sbb di, -105
adc dil, 38
or cx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

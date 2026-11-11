.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or cl, 12
add cl, dil
test dx, bx
mov dil, cl
jmp .bb_0.1
.bb_0.1:
mov bl, sil
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
sub sil, bl
or dl, -26
test bl, -91
and ax, 27239
mov bl, 29
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
mov cl, bl
dec dil
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
or dl, bl
dec cl
cmp eax, -1538116527
and al, bl
mov dil, cl
adc dil, 109
sub bl, dl
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and bl, -60
xor cl, 13
test dil, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

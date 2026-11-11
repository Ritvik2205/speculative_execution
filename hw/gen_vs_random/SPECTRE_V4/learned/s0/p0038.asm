.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
xchg al, bl
or si, -84
test sil, cl
and bl, -30
xor dl, cl
adc al, dil
xor ax, -29507
cmp rdi, 28
add al, al
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
mov dl, sil
adc esi, 80
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 88
and al, cl
or edx, -118
sub dil, -40
add dil, 75
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 34
xor rax, -111081832
cmp al, cl
dec al
cmp si, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

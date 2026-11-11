.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmp dl, -82
adc dl, al
sub cl, -51
xor cl, dil
and ax, -6897
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
or bl, bl
test al, -26
test al, 18
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
add cl, bl
xor si, -73
and ax, -14374
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and dl, sil
bts dx, 96
add bl, dil
test ebx, 56
test edx, -38580719
test al, 27
or cl, al
cmp bl, dil
or ax, 7381
add al, sil
and al, -118
cmp bl, -79
mov al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

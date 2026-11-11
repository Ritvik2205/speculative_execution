.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 3
test cl, dl
sub bl, cl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and bl, cl
cmp cl, bl
sub cl, -127
sub dil, bl
xor bl, -126
test al, 27
sbb dl, -62
or bl, dl
sbb cl, dl
xor ebx, 40
or rdx, 1
add sil, dil
btc edi, ebx
or ax, 28571
sbb al, 95
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and al, -118
add sil, cl
cmp dl, 83
add bl, 54
xor al, -15
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 42
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 61
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
cmp bl, -16
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and al, 92
cmp dl, dil
adc dil, dl
cmp ebx, -27
xor al, 118
or rdx, rax
or al, bl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor ax, 13329
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
xor dil, 37
xor dl, dil
or al, bl
sub rax, 120
dec dil
sub al, dl
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
add bl, sil
cmp dl, 95
test eax, -31785616
xor rax, -111081832
adc al, dl
sub dl, sil
sbb al, -4
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
or dil, dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
sub bl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or bl, -35
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

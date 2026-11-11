.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
xor al, 106
xchg rdi, rsi
mov dl, bl
or cl, sil
and dil, -120
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
cmp rsi, 74
add bl, sil
add dl, dil
adc cl, al
or rax, -2144083737
cmp al, -44
and al, 59
sbb al, 43
mov sil, 13
btc ebx, ecx
and rcx, 11
adc al, sil
xor dx, -43
and al, sil
movsx ax, dl
and dl, al
or sil, -47
adc dil, -15
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor al, -15
cmp bl, al
cmp dl, 83
sub cl, dil
and al, sil
cmp dl, -82
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

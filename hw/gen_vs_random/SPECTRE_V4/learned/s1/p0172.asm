.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
test dl, sil
inc edi
movsx bx, dl
sub sil, 71
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
xchg dil, bl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
add dl, -82
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
and ax, 16313
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor cl, al
dec dil
add bl, cl
cmp al, -78
cmp al, 75
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sbb bl, -98
test sil, 1
mov dil, dl
test cl, dl
and al, -118
neg dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sbb dl, dil
and al, -1
cmp rax, -1070057082
sub cl, bl
cmp edx, -95
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
xor dl, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
or al, bl
and eax, -2040347881
cmp al, -122
or al, -16
sbb cl, 45
and al, 100
cmovnp ax, cx
adc dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
cmp sil, al
test al, -38
and bl, cl
adc al, sil
and al, 92
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
xor ax, 45
xor al, -31
sub cl, -119
sub eax, -90064733
and dl, 124
adc al, cl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rcx
add dl, 109
mov sil, 13
sub cl, al
sbb sil, -11
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xchg dx, cx
sub dl, bl
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

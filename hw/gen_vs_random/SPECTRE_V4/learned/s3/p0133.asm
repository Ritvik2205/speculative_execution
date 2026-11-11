.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
sbb sil, -124
sub ax, si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
or cl, al
cmp cl, sil
bts ax, 155
sbb dl, al
sub rax, 1914398062
or bl, dl
mov cl, 14
mov dl, bl
cmp cl, bl
and dl, cl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
add sil, 3
or bx, -33
adc al, cl
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
adc dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
xor bl, al
mov al, bl
xor rax, 93
test al, dil
and bl, -30
mov bl, al
and al, 41
sub al, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

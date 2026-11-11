.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
movzx ebx, al
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
and dil, 96
test eax, -544019457
or edx, -127
cmovnb rsi, rax
btc dx, 16
test dl, sil
sbb esi, 23
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
add bl, 56 # instrumentation
cmovle rsi, rbx
cmovs rsi, rax
cmovnp cx, ax
cmovl rax, rbx
neg cl
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 67
add rdx, rbx
xor cl, bl
adc al, bl
imul dx
sbb dx, 43
xor dl, 21
add si, 4
or al, -71
xor cx, bx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
sub eax, edx
cmovnle rdx, rdx
movzx rdi, al
dec rdi
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
cmovnbe rdx, rbx
sub ecx, edx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
cmovo rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

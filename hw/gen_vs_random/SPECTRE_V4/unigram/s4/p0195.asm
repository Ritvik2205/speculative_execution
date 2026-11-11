.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
or al, sil
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
adc dl, 24
sbb al, -52
xor bl, 27
or dl, cl
add al, 111 # instrumentation
cmovno eax, esi
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
test al, 114
and cl, al
bts esi, 18
cmp al, al
sub dl, dl
adc dl, 43
mov ebx, 817819255
add al, 23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
cmovnbe rax, rdi
movzx rax, cl
cmovnz rsi, rax
bt rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 71
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
mov ebx, esi
add bl, -59
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
or al, -88
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 55
cmp cl, 107
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
sbb rdx, -43
mov cl, sil
btc edi, edx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
xor bx, di
cmovbe bx, bx
test esi, -2111618709
add dl, al
not cl
cmovl rcx, rbx
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or rsi, rdi
adc ax, 17267
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

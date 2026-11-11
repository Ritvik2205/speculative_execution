.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, al
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
cmovnle edi, edx
inc edx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmovbe rcx, rbx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
movzx di, dil
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
cmovns rdi, rcx
cmp rbx, -66
sbb rax, rdi
movzx ebx, cl
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
test si, 68
adc edi, -83
adc bl, al
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
add al, 27 # instrumentation
mov cl, dl
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 63
cmovnb dx, si
btr di, 245
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
add dil, -57 # instrumentation
cmovno rdi, rsi
add ecx, edi
adc sil, -112
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
sub bl, 66
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 70
add bl, -24 # instrumentation
cmovnbe dx, dx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
or edx, -83
add cl, -119 # instrumentation
sbb ecx, 28
xchg rax, rsi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
test eax, -31785616
sbb ax, 10407
cmovnle ecx, edi
or ebx, -78
cmp esi, -84
cmp rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
add cl, dl
dec cl
not rax
cmovno edx, esi
dec dl
and al, 49
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
add dl, -12 # instrumentation
cmovp esi, eax
cmovnp bx, di
or dl, 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
add bl, al
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
btc dx, si
sbb dl, dl
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add cl, 111 # instrumentation
cmovnle dx, ax
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
mov bl, dl
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
sub al, -84
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor ax, -17712
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
dec dx
or dl, cl
and di, dx
dec al
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -12
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
imul ax, di, 101
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
not rcx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
sub ax, 24426
btc rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, 63
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
and al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
sub dil, -28
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
not rax
sub rbx, 101
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
dec dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
btr bx, 11
add cl, dl
xchg rsi, rax
add bl, al
add dl, -12 # instrumentation
cmovp esi, eax
or dl, 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
cmovs rax, rsi
dec cl
xchg si, ax
sub bl, dil
add cl, 111 # instrumentation
cmovnle dx, ax
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
cmovnb di, ax
sbb dl, dl
cmovno edx, esi
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
btc dx, si
and eax, -1572488789
or al, -19
movzx bx, bl
cmovnp bx, di
or al, al
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and al, 41
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or al, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

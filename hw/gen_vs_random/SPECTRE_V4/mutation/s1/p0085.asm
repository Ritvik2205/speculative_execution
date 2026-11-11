.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dl
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
btr bx, 42
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
movzx bx, bl
and al, 5
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
sbb dl, dl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
or ax, bx
add bl, al
btc esi, 63
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
add cl, dl
cmovno edx, esi
or al, -88
xchg si, ax
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
sub rbx, 101
or dl, 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
cmovs rax, rsi
btc dx, si
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
not rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or al, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
dec cl
and al, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
cmovnp bx, di
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
or al, dl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
add cl, 111 # instrumentation
cmovnle dx, ax
xchg rsi, rax
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
add dl, -12 # instrumentation
cmovp esi, eax
and eax, -2040347881
cmovnb di, ax
sub dil, -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

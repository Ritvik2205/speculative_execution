.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
dec dl
movzx bx, bl
cmovs rax, rsi
or ax, bx
dec cl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
not rax
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
or al, 27
add cl, 111 # instrumentation
cmovnle dx, ax
cmovno edx, esi
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and al, -124
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
sbb dl, dl
cmovnp bx, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
sub rbx, 101
cmovnb di, ax
and al, dl
or al, dl
btr bx, 11
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
xchg si, ax
btc dx, si
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
add bl, al
xchg rsi, rax
add dl, -12 # instrumentation
cmovp esi, eax
add cl, dl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
sub bl, dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
sub dil, 35
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and eax, -1555813586
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
btc esi, 63
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
or dl, 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

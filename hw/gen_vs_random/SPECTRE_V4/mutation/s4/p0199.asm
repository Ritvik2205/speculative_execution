.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
adc rdx, rcx
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
imul cx, ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
mov rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
imul rcx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
sub dil, -28
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sbb al, dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 69
movzx edi, sil
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and eax, 1913354318
or al, dl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
sub dil, 35
or ax, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
cmovs rax, rsi
or al, al
xchg rsi, rax
xchg si, ax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
or al, -88
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
btr bx, 11
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and eax, -784085938
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
btc esi, 63
sub rbx, 101
cmovnb di, ax
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

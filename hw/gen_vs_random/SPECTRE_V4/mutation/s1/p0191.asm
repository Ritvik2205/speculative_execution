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
lock or word ptr [r14 + rcx], 67
sub dil, -28
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
sbb al, dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
movzx edi, sil
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and eax, -1555813586
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
bt rsi, rbx
sub rax, 714283065
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor cl, 88
test dl, cl
mov bl, 29
adc bl, cl
cmp ebx, -19
cmovl esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edx
adc eax, -983562873
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
sub rax, 1914398062
cmovnz eax, eax
sbb al, -4
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
mov cl, dl
adc al, sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
btc rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

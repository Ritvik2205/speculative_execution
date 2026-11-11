.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 24
imul edx, ecx, -116
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdx
add cl, 7 # instrumentation
adc dx, 45
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
add dl, -8
btr rax, rsi
cmp sil, sil
cmovnle di, di
bts cx, si
or al, al
adc al, 41
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
btc rax, 72
imul si
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ecx
dec al
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
inc ax
btc edx, ecx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
adc bl, 0
inc rsi
sbb al, bl
xchg dx, dx
cmovnp edi, edi
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
sub ecx, edx
adc rdx, rdi
xchg bl, bl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
or ebx, eax
bt ebx, edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
add dil, -35 # instrumentation
mov al, dil
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
movzx rdi, si
and eax, ecx
or si, si
sbb ebx, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
inc dl
test ebx, -595096626
test dil, 50
sbb al, -101
test bx, -1599
cmovnbe rcx, rcx
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
adc dx, 87
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or bl, 82
cmp sil, 88
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
not rcx
mov dl, al
test al, sil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
movzx eax, sil
or dx, 35
sub rax, -701741274
not rsi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
adc edi, 29
sub edx, 43
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 87
bts eax, 209
test cl, -89
mul esi
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
dec ax
adc ebx, 117
cmp bl, sil
xchg edi, edx
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rbx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, -222751961
add bx, ax
cmovno eax, ebx
cmovnz dx, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
add cl, -75 # instrumentation
sbb edx, 50
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
btr rdi, rcx
add dl, -74 # instrumentation
cmovnp rdx, rdi
cmp esi, -84
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 65
cmovns bx, di
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
sub dil, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
movsx ecx, cx
test dil, bl
adc dx, 95
cmovns cx, ax
test ax, 19171
imul di, dx
btc rcx, 69
cmovnbe cx, di
cmp bl, bl
sub dl, dil
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
cmp dl, bl
xchg rax, rcx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdx
add cl, 14 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
btc rax, rbx
btc edx, 164
and dil, dl
or al, -16
and rsi, 0b1111111111111 # instrumentation
xor al, cl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rax
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rcx
sbb di, ax
add cl, -118 # instrumentation
sbb rdx, 63
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
mov edx, -950755477
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

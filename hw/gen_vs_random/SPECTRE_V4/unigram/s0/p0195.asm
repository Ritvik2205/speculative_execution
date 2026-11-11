.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -77 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
sub dil, dil
sub eax, esi
sub al, 86
add bl, dil
cmp rdx, rcx
add dl, dl
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 60
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
imul al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
add bl, dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and bl, -60
movsx eax, dil
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
mul dl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 13
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdi]
cmp al, dl
cmovo ax, ax
or al, sil
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
add cl, -69 # instrumentation
adc sil, sil
add cl, -58 # instrumentation
cmovnz ecx, esi
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
bts esi, esi
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
imul rbx, rax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
not rax
test cl, -119
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
cmovle rcx, rax
cmovnp bx, dx
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

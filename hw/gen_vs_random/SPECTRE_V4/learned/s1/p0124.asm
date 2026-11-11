.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add dl, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add dl, dil
movsx rsi, bl
xor edx, ebx
btc di, ax
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
sbb al, -47
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add bl, -6 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
sbb cl, dil
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 38
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
add rdx, 57
or bl, sil
cmovo esi, edx
inc rsi
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 26
xor cl, dl
btc rsi, 140
test eax, -818909344
cmovnz edi, edx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmovnp rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
mul cl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 89
sub eax, 2
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
adc sil, bl
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
cmp cl, 52
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
sub dl, dl
cmp cl, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

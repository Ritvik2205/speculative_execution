.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, bl
cmovnz dx, di
imul rcx, rsi
add dl, 110 # instrumentation
movsx ax, dl
add bl, 65 # instrumentation
cmovnp si, dx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
test esi, 37
test dl, 19
mov rsi, rcx
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
test dl, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
sbb dl, -99
mul rbx
sbb dl, -99
imul cl
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
add al, -26 # instrumentation
btr eax, 92
adc ebx, 117
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
test ax, -5170
imul eax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, ebx
sbb dil, 7
cmovnbe cx, si
add bl, -72
sbb cl, 19
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
xor cl, dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sbb bl, dil
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
not ebx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor ebx, 76
imul dl
sub bl, 17
and al, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 33
imul bx, di
mov rdi, 94
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

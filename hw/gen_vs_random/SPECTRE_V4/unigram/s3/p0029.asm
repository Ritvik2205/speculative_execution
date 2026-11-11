.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 56
add dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
cmovnle eax, esi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
add al, -26 # instrumentation
btr eax, 22
sbb cl, cl
add rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
add cl, 72 # instrumentation
cmovle cx, di
add dl, 56 # instrumentation
cmovle rcx, rdx
cmovnz edi, ecx
and ax, 35
movzx ax, al
add bl, -72
movzx esi, dl
not eax
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xchg edx, esi
cmovnz edi, ebx
cmovnp eax, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
add dx, -90
add sil, -71 # instrumentation
adc sil, dl
test di, dx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
add bl, -10 # instrumentation
cmovnbe ebx, edi
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 55
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
not di
test ebx, -595096626
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
xor di, -43
sbb rax, rdi
btc ebx, 94
test esi, 57
or bx, -111
bts ecx, ebx
movzx dx, dl
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 57
cmp al, al
add bl, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

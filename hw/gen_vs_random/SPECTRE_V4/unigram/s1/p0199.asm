.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rdx
sub dil, -40
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
cmp rbx, -3
cmovbe eax, edx
add bl, -74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
btr rcx, rax
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
dec al
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and dl, al
test al, dl
cmovnz esi, ebx
cmp cl, dil
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
test bl, 110
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
or al, al
and cl, sil
xchg rax, rax
add bl, -49
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
dec dx
cmovnp eax, edx
cmovle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
cmovbe rbx, rdx
and ax, 16313
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 18
test ecx, -1293796332
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
imul edx, edx, 76
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
or dil, dil
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
adc sil, dil
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
sub dil, -11
cmp rdi, 28
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
xor cx, ax
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

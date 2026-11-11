.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 209
cmovb ecx, edi
sbb ebx, 11
cmovnle di, di
movzx rcx, di
add dl, bl
neg rcx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
add sil, sil
add dl, -94 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
sbb dil, cl
or dil, dil
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
dec al
btc bx, 49
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rdi, -2
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 44
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovnbe rdx, rdx
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
cmovb rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], di
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 48
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
test eax, -558243208
adc cl, al
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
btc eax, 50
add dl, -10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
cmovle dx, dx
xchg rax, rcx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
movzx ebx, dl
sbb dl, -99
sub bl, 17
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 9
dec ax
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
cmp ax, -906
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

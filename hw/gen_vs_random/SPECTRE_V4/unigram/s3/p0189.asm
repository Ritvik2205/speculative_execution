.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
cmp rsi, 85
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 42
sbb cx, 91
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmp rsi, 1
cmovb ebx, ebx
add al, dl
dec rax
cmovnb ax, ax
or sil, sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
xor sil, sil
test edi, -1249897727
cmovno esi, edx
cmp esi, 70
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 62
and rdx, 56
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
or dx, di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
test ax, 23760
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
bts edi, 167
cmp al, al
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
mov dx, 63
bts rax, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmp al, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
sbb rsi, rbx
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
cmp dl, 94
test esi, 82
and sil, -49
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
test ecx, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

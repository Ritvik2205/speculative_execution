.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
add rbx, 11
and rbx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rbx]
or dil, cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
test dl, al
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
add dil, -57 # instrumentation
cmovno rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
add cl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
or bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rax, 1072797615
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
sub rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 40
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
movzx rsi, di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
cmovbe ebx, ecx
sbb dil, al
cmovno ecx, ebx
cmp dl, 83
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 77
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 22
cmp esi, -84
sbb sil, dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
mov ecx, edx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
add dil, dil
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
imul edx, edi
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
or rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
or cx, ax
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rbx
and bl, sil
add al, -4
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

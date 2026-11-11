.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
mov rdi, 93
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and si, 68
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 37
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
add cl, -71 # instrumentation
adc cl, bl
cmovb ecx, ebx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
or dl, 88
adc eax, -1513455903
test al, al
bt ecx, eax
imul bx, si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
sub rdi, 49
adc dil, sil
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and sil, bl
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 5
add al, -26 # instrumentation
btr eax, 71
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and esi, 55
imul rsi, rdx
or edi, ecx
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
sub dil, dil
adc si, 89
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], ax
add ax, 28666
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 86
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

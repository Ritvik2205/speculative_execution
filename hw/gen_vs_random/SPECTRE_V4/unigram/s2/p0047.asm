.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ecx, dl
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
cmovz edi, edx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
movzx ax, dil
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
sub bx, 69
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
cmovle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
sub al, 98
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
movsx esi, dx
cmovo dx, cx
sub eax, ebx
cmovnb ecx, eax
add al, -75 # instrumentation
adc al, 79
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 56
adc edx, 66
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
add dil, -71 # instrumentation
adc dil, al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 30
adc dl, al
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 76
add cl, -117 # instrumentation
cmovs rsi, rax
mov esi, eax
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edx
sbb cx, 61
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sub al, 50
cmp esi, 92
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
add ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
add edx, 4
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
cmp bl, dil
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
sbb bl, bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
not ecx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
adc dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and edx, esi
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 100
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
movzx cx, dl
cmp sil, bl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
sub rax, rdi
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
adc cl, sil
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
cmovno rdx, rdi
dec cl
xor al, -60
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
xor edx, 98
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
sub rcx, -99
test esi, -2111618709
or ebx, eax
adc rcx, rbx
sbb dil, cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
or dl, sil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
inc al
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 39
or eax, edi
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
or cl, dil
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 99
add cl, -121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

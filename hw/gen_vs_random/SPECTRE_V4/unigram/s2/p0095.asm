.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
or sil, sil
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 37
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
add cl, -50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
sub cl, dl
cmp esi, edx
add al, 66 # instrumentation
cmovp ecx, ecx
cmp al, cl
xchg bx, cx
add rcx, -61
btc edi, 125
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 93
add sil, -97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
adc cl, 111
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovno edx, eax
add bl, -38
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
adc dl, cl
or rdx, 1
test rax, -405021090
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 58
sub ax, 24426
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
cmovnb ax, dx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
add al, 32 # instrumentation
adc rax, -324435035
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add bl, -2 # instrumentation
cmovs rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
cmovb di, cx
add rdx, 83
bt ecx, eax
cmovl rax, rsi
xor si, -73
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rsi, rax
sbb rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
movsx eax, dx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
bts eax, edx
movsx edi, cl
or dil, 2
bt ebx, 228
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
movzx rbx, dil
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 100
add bl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
movzx eax, cl
cmovnbe rcx, rdi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
add cl, 122 # instrumentation
cmovz rbx, rax
sbb dl, -99
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
or bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
sub rdx, 22
and sil, cl
cmovnbe ax, cx
add cl, -21 # instrumentation
adc rdx, 99
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
add al, -71 # instrumentation
adc al, dl
sub eax, esi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
movzx edx, al
cmovl rsi, rbx
sub sil, bl
test dl, dil
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rax, 46
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 24
test sil, dil
dec rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

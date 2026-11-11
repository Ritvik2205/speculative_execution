.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
bts rcx, rsi
sbb dil, al
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 58
sbb ecx, 30
cmovnp rcx, rsi
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
xor dx, cx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
xor sil, dl
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
bts ebx, edi
movzx bx, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 63
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
btc cx, 240
adc al, -58
and edi, 60
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
add cx, 67
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 85
movzx eax, al
or bl, bl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
neg bx
cmovnl si, ax
test dl, bl
btc ax, 62
xor ecx, ebx
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 27
test ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 5
adc ax, ax
add dl, 31 # instrumentation
cmovnl bx, bx
xor bl, sil
adc dl, sil
and al, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

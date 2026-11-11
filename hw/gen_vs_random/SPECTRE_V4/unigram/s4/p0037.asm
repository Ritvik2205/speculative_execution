.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, edx
test sil, cl
mul rbx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 75
or sil, bl
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
cmovnbe ebx, eax
sub rcx, 43
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 50
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 80
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 94
and cx, 17
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
sbb bl, -94
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
add dl, 31 # instrumentation
cmovnl ax, ax
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
adc esi, 90
add dl, 31 # instrumentation
cmovnl si, si
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
cmp sil, bl
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add dl, -99 # instrumentation
not ecx
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
movzx di, al
add bl, sil
sbb bl, al
sbb dil, dil
imul eax
dec rax
sub di, 44
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
imul rdi
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sub rsi, rax
movzx rsi, ax
sbb bl, dl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
btc rdx, 12
sub ebx, edx
movzx edi, sil
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

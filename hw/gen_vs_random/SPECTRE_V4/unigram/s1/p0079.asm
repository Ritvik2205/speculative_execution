.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -2040347881
and dil, 8
or dl, al
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
xor rbx, -99
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
imul ebx, eax, -112
or cl, cl
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add al, 27 # instrumentation
mov bl, al
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
neg rax
adc dl, 21
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
movsx rax, dl
add ebx, -57
not eax
xor al, -60
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
movsx ax, bl
cmovnle bx, cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rax, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 66
bt ebx, ecx
add cl, -77 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
mov cl, dl
btc rcx, 9
cmovnz rbx, rdi
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
imul dl
and edi, -102
mov dil, sil
sub cl, -127
sub al, dil
bswap ecx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
sub bx, di
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

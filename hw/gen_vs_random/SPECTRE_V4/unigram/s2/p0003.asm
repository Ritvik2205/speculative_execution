.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or edx, -127
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
test dil, dl
add di, di
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 72
imul dx
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 76
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
cmovo rbx, rbx
sbb edx, 4
add cl, 33
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 65
cmovl rdi, rbx
not bx
adc sil, 39
xor di, -43
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, edx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
add cl, -37 # instrumentation
adc edx, 33
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
bswap ebx
add dil, dil
cmp bl, 13
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or cl, 98
cmp rdi, 77
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
imul di, bx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 70
cmp sil, sil
bts eax, 209
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

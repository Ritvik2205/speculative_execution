.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and bx, 94
or al, al
adc rsi, 82
and al, 75
xor sil, cl
adc al, -117
sub cl, cl
or cl, -104
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and cl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], di
xor edx, edx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
cmp si, dx
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 69
cmovbe rax, rdx
xor rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
not edx
add rsi, 44
cmovnz rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
add rdi, rsi
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
or si, 0b1000000000000000 # instrumentation
bsr cx, si
or ax, ax
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or rcx, 68
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 66
add eax, -2075159577
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
or eax, -863161215
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
add eax, edx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
cmp dx, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

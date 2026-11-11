.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
cmovp rdi, rbx
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
and rdx, 71
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 63
imul dl
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 80
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
add dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
or di, dx
cmovle ecx, eax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cmp dil, -124
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 15
adc edi, 8
btc cx, 240
btc ax, 35
and rbx, 110
test ebx, -595096626
cmp bx, ax
sbb dil, 3
test rdx, 8
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 81
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
adc cl, 48
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
test dl, cl
xor rsi, -3
sub al, 98
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xor bl, dl
cmp dl, 35
cmovnp edx, ebx
add ecx, eax
adc rbx, rcx
sub al, al
and dil, sil
xor ecx, 65
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

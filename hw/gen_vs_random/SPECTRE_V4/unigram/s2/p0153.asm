.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, -1866088512
add al, -67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
add al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
xor bx, 59
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xchg dx, dx
movzx cx, al
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rcx
bts ax, di
btc ax, di
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
test dil, -83
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
cmp dx, 13
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and al, 59
xor bl, -126
test dil, cl
cmovle si, dx
xor cl, sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
mov si, di
adc rdx, rbx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 12
imul ebx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], esi
cmp sil, dl
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
cmp rsi, 22
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
xchg cl, dl
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
cmp al, al
and si, -70
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
xor rdx, rdi
dec al
mul dl
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

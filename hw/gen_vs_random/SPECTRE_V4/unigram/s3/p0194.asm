.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, al
add cl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
neg rsi
movzx ebx, sil
test ecx, 860867711
cmovle rdx, rdi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 49
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
cmovle rdi, rdx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 17
add edx, 89
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rsi
or rbx, rbx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
cmp rax, rax
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
add dl, 16 # instrumentation
cmovnz bx, dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], bx
sbb si, 75
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
cmovs eax, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
adc ebx, 66
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 84
adc rdx, -90
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and dil, -61
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 31
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
add ax, ax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
xor rsi, rdx
imul ax, di
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, 29
xor dl, sil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
imul dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov bl, bl
dec rdi
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
xchg cl, bl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
add cl, -69 # instrumentation
adc bl, bl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
sub rdx, rcx
cmovnz cx, bx
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx]
imul ebx, edx
sub cx, bx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
cmovs edx, ecx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
cmovb eax, edx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
xchg cl, cl
add rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
test bl, 110
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 69
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
or cx, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

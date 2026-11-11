.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
bts si, 74
adc al, dl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
sub rax, -1680844889
btc rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 34
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 54
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
mov al, bl
or cx, 23
test dil, -5
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
test eax, 1600638830
cmovnb cx, di
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
mov rdi, rcx
sub al, sil
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
xor bl, 27
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
adc sil, bl
sbb ecx, 44
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 13
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
sub bl, dil
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
test sil, 68
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
neg al
add cl, 35 # instrumentation
cmovnb rax, rdx
adc dil, 38
and ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

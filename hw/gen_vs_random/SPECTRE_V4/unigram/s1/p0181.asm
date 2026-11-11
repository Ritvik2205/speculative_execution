.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
or bx, di
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovs rcx, rsi
add ecx, 59
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 24
add bl, -72
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 35
add si, 4
test cl, sil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
test ebx, -595096626
adc sil, sil
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 31
add si, si
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
test ebx, 1263899340
and cl, dil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmp bl, 13
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
add dl, 41
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
adc al, al
or ebx, esi
not cx
cmovnp ebx, ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rcx]
cmovle ax, ax
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 57
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
adc cl, 44
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
add cl, dil
adc dl, 34
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
test al, 80
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
mov rdi, 77
adc ebx, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

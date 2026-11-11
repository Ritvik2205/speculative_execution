.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 95
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
or ebx, 32
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
movsx edi, dl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
xchg rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
add esi, -5
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 53
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
adc bl, bl
mul rbx
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
not rbx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
xor ax, cx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sub sil, al
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
cmovle dx, dx
not ebx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
bt edx, eax
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 79
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 91
sub eax, -523763262
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
neg eax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
or edx, ebx
bswap ecx
or sil, sil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
mul rbx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

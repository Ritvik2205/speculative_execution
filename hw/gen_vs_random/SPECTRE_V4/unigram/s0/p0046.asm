.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, dl
and dil, cl
cmp rdi, 91
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
add sil, 26
add bl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 88
imul rdi
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
movzx dx, dil
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 49
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
add ebx, 3
imul cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 23
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
adc rdi, 30
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 80
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp si, ax
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
not esi
dec bx
adc sil, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
adc rbx, 14
add esi, -5
cmovnbe rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 78
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
imul dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
test ecx, edi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

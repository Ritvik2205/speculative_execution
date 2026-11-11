.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, -54
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx eax, bl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 22
and cx, -117
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
test rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 94
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
sub dil, dl
movzx edx, dil
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ebx
or bl, 61
imul rcx, rsi
or bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
adc al, -59
imul eax, eax, 94
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
cmovo eax, eax
adc al, al
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 32
adc al, 41
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
or rdi, -41
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
xor bl, 126
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

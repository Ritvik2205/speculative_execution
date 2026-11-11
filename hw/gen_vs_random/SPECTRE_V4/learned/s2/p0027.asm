.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rax, -8696242625349627833
add dl, al
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
adc eax, -79
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
add cl, -42 # instrumentation
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
or edi, eax
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmp bl, al
sub eax, 2
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, -54
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
xor sil, dil
add edx, eax
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 70
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 60
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
mov si, 9
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
movzx bx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

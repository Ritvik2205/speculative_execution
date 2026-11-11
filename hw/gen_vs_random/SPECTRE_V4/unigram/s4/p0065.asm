.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 63
mov rax, rax
cmovbe rbx, rax
mul si
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 56
bswap rcx
or cl, cl
and eax, -1948401947
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
test edx, eax
cmovnz bx, di
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
adc dil, 109
neg bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
bt esi, 88
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
inc rbx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 16
and cl, cl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rbx
add cl, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
add cl, -9
sub cl, -73
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
imul sil
inc rcx
cmp ebx, -27
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
movzx dx, cl
movsx ax, cl
cmovnz ax, bx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
not sil
adc ax, si
cmovno di, di
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

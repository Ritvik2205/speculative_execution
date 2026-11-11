.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe edx, esi
add cl, -118 # instrumentation
sbb rcx, 32
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
test ecx, -1293796332
movsx ecx, cx
xor esi, ebx
and sil, dil
imul esi, edi
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
sub ecx, -107
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and dl, sil
cmp dx, -26
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
mov edi, 412386591
or di, 2
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
mov dl, cl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
imul sil
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
movzx si, dl
cmovb edx, ecx
bts rdi, rcx
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
or dl, -26
bts rax, rsi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
add cl, -33 # instrumentation
not dl
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
cmovb cx, ax
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
mov rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 29
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
add cl, -9
sbb dl, bl
bts cx, si
cmp sil, -100
test dl, -102
cmovl ebx, eax
xor esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

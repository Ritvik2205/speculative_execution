.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 109
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1827868798
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
add cl, sil
xor al, 78
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
xor cl, 122
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
cmovnbe si, bx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
test sil, dl
xor cl, sil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 76
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
or al, -48
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 61
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
btr edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
xor cl, -79
bt esi, 30
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
add ebx, ecx
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
mul rbx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

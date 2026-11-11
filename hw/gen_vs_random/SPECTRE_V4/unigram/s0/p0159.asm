.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 45
neg dl
cmovnz ecx, ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
cmovbe bx, si
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
cmovnp bx, ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
or cl, -55
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 4
or dil, cl
xor rbx, -99
xchg bl, al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
cmp ax, 26170
add al, 42 # instrumentation
movsx rdx, al
and dl, 24
cmovo ecx, edi
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsr ax, di
or bl, bl
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
add dl, bl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
cmovz edi, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
cmovle rax, rdi
sbb cx, 106
add cl, -58 # instrumentation
cmovnz ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
bt edx, 60
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

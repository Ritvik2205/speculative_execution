.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rcx]
and cx, bx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
adc dl, 37
or al, 27
xor sil, bl
cmovno bx, dx
btr ecx, 39
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
inc sil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
sbb ax, 75
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
btc rbx, rdi
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
mov rdx, rcx
cmp al, cl
mul dl
cmp di, -8
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
xor rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and edi, -102
mov sil, dil
cmovnz si, cx
cmovno edx, esi
mov cl, 14
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
neg rsi
and sil, -84
btc bx, 254
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 71
cmovo ebx, eax
movsx ax, al
bt edx, 70
sbb ebx, -54
neg bl
and edx, ebx
add dil, dil
xor si, -73
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

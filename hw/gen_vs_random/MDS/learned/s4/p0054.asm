.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
sbb eax, 61
cmovs edi, esi
sbb dl, sil
and di, si
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
xor rbx, rax
cmovs ecx, ebx
xor ax, bx
and eax, -1971658905
and ax, 28417
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
or rax, 1749358813
adc bx, 61
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
cmovnbe edi, edx
lea eax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or sil, -8
and bx, -21
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 36
bt esi, 99
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
test bl, 106
setle dil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
xor ax, 24729
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 71
test bl, 106
mov dil, 30
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 72
and rdi, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

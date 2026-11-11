.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
xor al, -15
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
sbb dil, sil
cmovnz di, ax
dec bl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
movsx ecx, di
cmovnb esi, ebx
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdi
neg al
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 79
bswap eax
add bl, -38
btc edx, eax
test al, -38
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
cmovnl dx, si
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
xor ax, 15671
bts rsi, rax
inc eax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
cmovno rax, rsi
sbb dil, 41
test bl, -29
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 42
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
add rcx, 32
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc rax, -827748523
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rax, rdi
movzx rsi, bx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
cmovp ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

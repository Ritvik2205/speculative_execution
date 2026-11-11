.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1880179600
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
or dl, dl
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
add dl, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmp al, 114
cmovnle cx, cx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 30
adc sil, 71
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 75
inc rsi
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
xchg eax, esi
setnz dil
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
add rax, 52
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
movzx rax, cl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
add sil, 110
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ecx, eax
test eax, 1561062795
and sil, -49
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
cmovb rdx, rax
imul esi, ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 68
cmovnbe cx, si
and bl, al
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
cmovb edx, esi
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

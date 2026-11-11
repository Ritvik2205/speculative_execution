.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 82
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
test dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
xor ax, 28088
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
movzx ax, dil
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
xor ax, 25554
xor ax, cx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 93
cmovo rdi, rdi
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
bt si, bx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
sbb cl, 19
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
bt ax, 49
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
lea rdx, qword ptr [rbx + rcx]
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rax], edi
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
movzx ecx, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
test bl, bl
add bl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
cmovb rdx, rax
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
test ax, di
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
imul cl
or al, 95
bts edx, edx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 45
test dl, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
adc ecx, -12
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, 11
dec rdi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 48
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add eax, -1796699558
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
test bl, al
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
cmovnp rdi, rsi
test rax, -331426050
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 81
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and al, bl
test rax, -344032571
test rdi, -1876639003
adc dx, 14
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
movzx ecx, bl
sub al, sil
inc cx
add dl, -99 # instrumentation
not ecx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
add dl, al
test eax, 1880179600
adc bl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
mov rcx, 5862286138240743445
dec dl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
inc edx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

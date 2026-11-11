.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
cmp eax, 100
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
add ax, 6980
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
add al, -76 # instrumentation
cmovnbe di, di
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 68
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
sbb dil, sil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
lea rax, qword ptr [rcx]
btr esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

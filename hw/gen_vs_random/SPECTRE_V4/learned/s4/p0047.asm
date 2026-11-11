.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 46
xor sil, sil
or eax, 1001462340
cmp ebx, -27
or dil, sil
or ax, -29521
cmp eax, 64
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
cmp al, -44
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
add dil, al
mov cl, 14
and cl, 32
or sil, al
btc rax, rsi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
test cl, -10
sbb bl, -75
and al, 59
and al, -1
add dl, bl
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
add dl, -82
mov bl, cl
xor ax, si
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
sbb dil, 81
bt bx, ax
xor cl, 88
cmp al, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

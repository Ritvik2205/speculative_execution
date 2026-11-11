.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, ecx
add cl, sil
and bl, -60
and bx, 25
mov cl, sil
dec sil
neg dil
xchg al, dl
add cl, dil
or bl, 80
or rcx, 8
xor al, dl
or eax, -1341747033
bts dx, 26
add dil, -84
xor al, 57
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 46
adc bl, dil
btc rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
sbb dl, -106
or cx, 59
mov cl, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and cx, -117
sub bl, 66
xchg eax, ebx
xor dl, cl
xor ax, 30500
sbb sil, al
cmp al, -44
and rax, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rax]
cmp al, 114
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

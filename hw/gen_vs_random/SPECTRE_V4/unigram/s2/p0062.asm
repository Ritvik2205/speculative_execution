.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc esi, 90
xor eax, ecx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and bl, 26
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovnbe cx, ax
test dl, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 25
sub dil, -10
bswap edi
sub edx, 32
mov dl, -34
test al, bl
sub ebx, edx
test bl, 24
cmovle rdx, rbx
and cl, dl
cmp cl, al
xor bl, 93
btc rdx, 76
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 30
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 33
cmovnb ebx, edx
cmovnb ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 40
cmp dil, -124
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
not bl
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
test al, al
inc esi
add rcx, 96
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
movzx rbx, dx
neg sil
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test al, dl
adc cl, al
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
xor bl, bl
or eax, -1434249782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

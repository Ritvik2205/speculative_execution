.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
add al, -60 # instrumentation
cmovle rdx, rsi
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
cmp al, -53
cmovb cx, bx
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
add ebx, -57
or ax, -26182
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
or cl, -55
sub edx, -122
cmovs edi, esi
or dx, 52
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 77
and di, -65
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
sbb rdx, 6
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
mul bl
sbb dil, 23
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
inc al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
cmovnb rcx, rsi
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
bt eax, esi
xor bl, 27
adc esi, edx
add esi, 72
sbb sil, dil
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
add ebx, ecx
cmp ecx, 1
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
btc rax, rdi
cmp dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], esi
adc rax, 1690546225
or si, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

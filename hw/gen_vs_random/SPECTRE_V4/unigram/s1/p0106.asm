.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, eax
xor dx, -43
sub eax, ecx
mov ax, di
add dl, 74 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
sub ebx, esi
and rax, 1827025056
cmovnz rax, rsi
cmovns di, cx
cmovo si, bx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add rbx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
inc al
movzx rdi, dx
xor sil, 87
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
add bl, cl
or rsi, 73
and cl, 126
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
inc al
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
cmovp rax, rbx
xor dl, dl
movsx edi, bl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
add cl, cl
imul rcx, rax, 97
imul rax, rcx, 6
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
adc cl, -85
xor edx, ecx
and ebx, -122
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], esi
cmovl rdx, rsi
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
sub bl, 56
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
cmovnz si, ax
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
add sil, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rsi
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
add al, -29
mul dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
or ebx, -82
bt esi, ecx
xor cl, 88
cmovnz rax, rbx
or esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
add dl, -58 # instrumentation
xchg ax, dx
adc edi, -83
xor cl, 13
add bl, 54
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], eax
cmp rax, -2096157586
imul eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
adc bl, bl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], edx
or cl, 66
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
add al, -7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
add cl, 53 # instrumentation
cmovnbe esi, ebx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
inc ecx
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
adc di, -78
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
test dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
sub rcx, rcx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 22
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edi
cmovs ecx, eax
xor bl, -126
sub eax, -494922880
bts rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

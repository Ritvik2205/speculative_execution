.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sbb dl, -99
cmovo rdx, rdx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 80
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 97
movsx eax, cl
xchg bx, cx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rcx
bts rdi, rdi
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
adc rbx, rsi
add ax, 28666
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 86
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 59
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
adc ebx, 117
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, esi
inc eax
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
cmovnz edx, ebx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
adc ebx, 117
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
cmovl rax, rcx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
cmovs rdx, rbx
sbb edi, 43
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
cmp rdi, 66
or dil, bl
btc rax, rsi
xor edi, 51
sub dil, dil
add dl, 56 # instrumentation
cmovle rbx, rdx
movzx dx, cl
and al, dl
adc dil, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

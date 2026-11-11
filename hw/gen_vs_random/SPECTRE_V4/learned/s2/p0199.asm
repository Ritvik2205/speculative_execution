.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, -2
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
setl bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
sub rdx, 22
or dl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
adc dx, 35
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sbb dl, al
cmp dl, 84
inc rsi
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sbb dl, -99
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
and al, -36
adc al, cl
btc ax, si
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
not rdx
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
mul cl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
sub ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
sbb cl, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
cmp ax, 23131
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], 71
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
imul cl
or al, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

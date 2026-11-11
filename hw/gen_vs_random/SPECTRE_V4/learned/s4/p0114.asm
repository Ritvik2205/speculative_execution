.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
cmovnp si, si
or eax, 1802312508
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 11
cbw
setnbe cl
xchg dx, di
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
sub dil, -10
bts rbx, 32
bts edi, eax
add eax, ecx
add dl, dil
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
adc sil, 92
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
test al, 66
and al, -36
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
bts eax, 209
movzx ecx, bl
cmovp esi, edx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovnb esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovp rcx, rdx
movzx cx, bl
cmovnbe rbx, rsi
and sil, bl
sbb cl, bl
sub rax, -701741274
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
mov dil, -118
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
add dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

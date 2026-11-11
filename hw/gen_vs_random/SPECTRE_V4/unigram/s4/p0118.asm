.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bx, -31043
bts rdx, 3
and dil, cl
or dl, 88
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
or ebx, 93
test eax, -818909344
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
bts dx, 71
cmovb eax, eax
imul esi, ecx, 92
add dl, 31 # instrumentation
cmovnl ax, ax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
movzx si, al
add cl, 106 # instrumentation
cmovnp rax, rcx
cmovnp eax, eax
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 71
sbb cx, 83
add al, al
and bx, 95
sbb bl, dil
and ax, 35
test ax, si
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 56
imul eax
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and ax, 35
add esi, ebx
xor dl, 83
cmp ax, -15031
or edx, -127
cmp rbx, 40
dec rax
movzx esi, bl
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
sub rdi, rax
or dx, 93
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
and al, -36
mov rdx, rdi
bt eax, ecx
xor bl, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

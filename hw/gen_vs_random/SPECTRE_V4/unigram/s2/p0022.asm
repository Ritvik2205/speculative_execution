.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
sub ecx, 36
xchg edi, ebx
add cx, 66
or cl, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
mov rbx, rdi
and bx, 95
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 77
bt ebx, 228
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
imul ecx, ebx
imul bl
sub al, bl
sbb edi, 71
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
add cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
mul rbx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
imul dx, si
xor dl, 54
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
movzx cx, bl
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
xchg dx, di
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, edi
imul cl
add dl, 41
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
cmovs dx, dx
bts rcx, 26
cmovnle edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
btc bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
xor edx, 18
movzx ecx, sil
add cl, -42 # instrumentation
adc dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

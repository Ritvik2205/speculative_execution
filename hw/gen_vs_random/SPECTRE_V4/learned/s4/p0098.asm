.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
or eax, -1434249782
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
xor al, 69
xchg dx, cx
test ax, -5170
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
xor bl, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or dl, cl
or al, bl
add ax, 28666
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ecx
add sil, dl
adc al, bl
test eax, -818909344
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
xor cl, dl
imul esi, edx
or al, bl
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
movzx rcx, di
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rax, 67
imul di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

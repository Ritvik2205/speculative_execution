.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
add ax, 28666
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
or eax, 1802312508
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
add bx, 110
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
movzx rcx, di
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
xor cl, bl
bt ebx, 228
and al, -36
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
or al, bl
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
cmovnle rbx, rbx
cmovp ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor cl, dl
xor bl, dl
xchg dx, cx
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmovle rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
test ax, 23760
xor al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

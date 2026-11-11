.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
cmovnle rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
bt ebx, 228
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
test ax, 23760
sub sil, -50
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and al, -127
or eax, 2007177863
cmovl rdi, rax
or al, bl
xchg dx, cx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
xor al, 56
add bx, 110
cmovp ax, bx
movzx rcx, di
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
add ax, 28666
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
cmovle rdi, rsi
xor bl, 93
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

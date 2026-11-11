.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and al, -36
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
add ax, -15653
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovle rdi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
xor bl, 93
xor bl, dl
or al, bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
test ax, -5170
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
bt ebx, 228
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
xchg dx, cx
or dl, cl
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
xor cl, bl
sub sil, -36
cmovp ax, bx
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
add bx, 110
xor cl, dl
or eax, 2007177863
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
movzx rcx, di
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
xor al, 69
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
cmovnle rbx, rbx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

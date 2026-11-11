.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
xor bl, dl
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xor al, 59
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
cmovnle rbx, rbx
or al, bl
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
bt ebx, 228
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
movzx rcx, di
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
add bx, 110
and al, -127
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
test ax, 23760
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
cmovl rdi, rax
xchg dx, cx
cmovp ax, bx
add ax, 28666
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
xor cl, dl
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
or eax, 2007177863
or dl, cl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

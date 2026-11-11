.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
xor bl, 93
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
add ax, -13169
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
sub sil, -36
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
xor al, 69
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xor cl, bl
or eax, 2007177863
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovp ax, bx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add bx, 110
cmovl rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or dl, cl
bt ebx, 228
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
or al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
xor cl, dl
and al, -36
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
xchg dx, cx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovnle rbx, rbx
cmovle rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
test ax, -5170
movzx rcx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

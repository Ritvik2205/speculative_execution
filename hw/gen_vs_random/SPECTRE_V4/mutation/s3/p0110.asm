.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
test ax, -5170
movzx rcx, di
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
cmovle rdi, rsi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and al, -127
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
xor cl, bl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
xor bl, dl
or eax, 2007177863
or dl, cl
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
xor cl, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
add bx, 110
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
cmovnle rbx, rbx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
cmovp ax, bx
xor bl, 93
sub sil, -50
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
bt ebx, 228
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
add ax, -13169
xor al, 56
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
xchg dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovbe edi, dword ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock adc qword ptr [r14 + rsi], rdx 
lfence
cmovle rdi, rsi 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rsi], bl 
lfence
or eax, 1802312508 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock add qword ptr [r14 + rdx], 120 
lfence
xor bl, 93 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rsi], si 
lfence
xor al, 69 
lfence
xchg dx, cx 
lfence
test ax, 23760 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rsi], -97 
lfence
cmovp ax, bx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnl edx, dword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
movzx esi, word ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movsx rdi, word ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovl rax, qword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnp si, word ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovo rdi, qword ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock add word ptr [r14 + rdi], ax 
lfence
xor bl, dl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and al, byte ptr [r14 + rax] 
lfence
xor cl, bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmp dx, word ptr [r14 + rdi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnle ebx, dword ptr [r14 + rax] 
lfence
or dl, cl 
lfence
or al, bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
adc cl, byte ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rdx], -31428 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb qword ptr [r14 + rsi], 104 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl ax, word ptr [r14 + rbx] 
lfence
sub sil, -36 
lfence
cmovnle rbx, rbx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rax], 87 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and dx, 0b111 # instrumentation
lfence
bt word ptr [r14 + rdi], dx 
lfence
add dl, 116 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnl rsi, qword ptr [r14 + rcx] 
lfence
xor cl, dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
add bl, byte ptr [r14 + rsi] 
lfence
add ax, -15653 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl rax, qword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnl eax, dword ptr [r14 + rax] 
lfence
movzx rcx, di 
lfence
cmovl rdi, rax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnz bx, word ptr [r14 + rdx] 
lfence
and al, -127 
lfence
bt ebx, 228 
lfence
add bx, 110 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

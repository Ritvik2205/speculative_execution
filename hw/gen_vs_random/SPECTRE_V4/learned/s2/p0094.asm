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
or eax, 1802312508
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
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
cmp dil, sil
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
or rax, 76
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg rsi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmovnle eax, edx
movzx rcx, di
cmovl rdi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and al, -36
bt ebx, 228
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

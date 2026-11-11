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
xor al, 59
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
test ax, 23760
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
cmovnl si, ax
xor edi, 83
cmovnp rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test cl, -89
cmovnbe ebx, edx
or dl, dil
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and bx, 95
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmp dl, dil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
or ax, -15282
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
mov rcx, 5862286138240743445
not cx
mov edi, -1544998000
btc dx, 16
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

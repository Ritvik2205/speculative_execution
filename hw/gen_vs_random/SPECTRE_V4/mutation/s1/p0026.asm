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
or eax, 2007177863
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
xor al, 56
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
and al, -36
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and sil, dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
xor al, 102
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and bl, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 71
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 73
imul dx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
add bl, -109 # instrumentation
sbb ebx, 70
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
not ax
cmovs ecx, edx
cmovnle edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
xchg eax, edx
cmovnl rcx, rbx
and al, sil
cmovnb ax, ax
btc rax, rdi
btc cx, 240
imul dx
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
test rax, -331426050
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 17
test rbx, 86
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 24
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
btr rdx, rcx
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add rsi, rdx
or rbx, rax
add dl, -114 # instrumentation
cmovl bx, dx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
bt cx, 111
add dil, dil
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
add rcx, 33
test sil, al
add dl, 118 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
or dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 49
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

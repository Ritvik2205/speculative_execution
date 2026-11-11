.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
mul ax
or bl, bl
cmovnbe bx, dx
cmovnz ecx, esi
cmovnbe rcx, rax
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
sbb dl, -99
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
sbb dil, 57
cmovns rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
movzx rsi, al
bt ebx, ecx
test cl, bl
bts eax, 209
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
sub cl, al
sbb eax, -1688332460
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
xor bl, 93
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 65
sbb al, bl
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
add sil, dl
xchg cx, ax
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
test bl, bl
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
cmp bl, 13
cmovp di, si
test cl, dil
imul si, dx
test ecx, 75
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
sbb ecx, 8
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
cmovnp rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

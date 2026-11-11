.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
mov rdi, 18
bt eax, ecx
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
adc si, 25
neg rax
add cl, -21 # instrumentation
adc rax, 97
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
sbb sil, 108
sbb eax, 1081973675
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 78
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub edx, 98
bt edi, esi
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
btc rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
imul rax, rsi, 66
cmovnle eax, edx
add eax, esi
cmovle bx, bx
sbb rbx, rdi
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
xor eax, edx
add cl, -26 # instrumentation
btr ecx, 44
cmovs dx, di
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 78
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
movzx esi, bl
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
cmovnz ecx, ebx
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
btc cx, dx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
not edx
bts ecx, 68
imul cl
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
sbb bx, 60
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
cmovnb ebx, ecx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
xchg ebx, esi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

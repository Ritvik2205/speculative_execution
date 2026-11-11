.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
sbb bl, 57
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
add cl, -26 # instrumentation
btr ecx, 65
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
cmovle bx, dx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
add dl, -94 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
adc dil, cl
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, dx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmp dil, -124
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
xor bl, sil
bts rbx, rbx
xor bl, 93
mul dl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
cmovnbe rdi, rcx
and cl, 58
test rsi, 10
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cmovnp di, ax
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
add dil, dl
xor bl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
cmovnz dx, bx
add dl, 31 # instrumentation
cmovnl ax, ax
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 100
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
imul sil
sub sil, -50
and ax, 35
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
add di, -74
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rcx
sub cl, -74
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
xor bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

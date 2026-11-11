.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
cmovl rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
not ax
cmovle rdx, rax
mov rax, -8696242625349627833
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 57
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
or bl, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
cmovo rdi, rdi
add cl, 122 # instrumentation
cmovz rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
xor di, -43
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmovnbe rcx, rsi
imul dl
cmovnp rsi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ebx
sbb cl, 19
cmp al, bl
mul edx
add cl, -37 # instrumentation
adc ebx, 84
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
test rbx, 91
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
adc dl, 57
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add bl, bl
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edx
or cx, 13
sbb ecx, 81
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

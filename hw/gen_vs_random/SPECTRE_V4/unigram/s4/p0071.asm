.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
mul ax
sbb rdi, 63
cmovle rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 37
cmovle rdx, rdi
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 61
mul cl
cmp dx, bx
or ax, -15282
add sil, 56 # instrumentation
cmovle rcx, rsi
cmovo bx, cx
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
cmovnbe si, bx
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 42
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
movzx esi, si
and rbx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rbx]
movzx ebx, al
btc bx, 53
xor al, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
add al, 5
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 56
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 73
add dl, -26 # instrumentation
btr edx, 30
or dl, dil
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rax
add bl, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 94
test edx, 573099753
sub ebx, 18
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
add cl, -82 # instrumentation
sbb ax, di
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

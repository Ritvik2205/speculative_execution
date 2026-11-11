.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test si, 89
adc dil, dil
btr edx, 160
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 69
adc rcx, -99
sub cl, dil
imul ax, cx, 50
xchg dl, cl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 32
imul rbx, rax
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add rcx, -61
test bl, al
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 93
and rsi, 0b1111111111111 # instrumentation
xor dl, dil
inc al
btc rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
adc dil, al
and cl, -101
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edx
movzx bx, bl
neg al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
bt ecx, 177
bts eax, 42
add sil, -10 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
cmovle dx, di
movsx ax, cl
sub rcx, 126
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
mov di, 47
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
xor bx, -65
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
xchg cx, ax
cmovnl bx, ax
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
cmovo cx, cx
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

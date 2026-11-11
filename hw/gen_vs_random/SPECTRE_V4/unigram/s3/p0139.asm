.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -71
add dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
movsx rsi, ax
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
sbb dil, 33
test dil, cl
add cl, al
imul edx
add bl, dl
cmovno edi, ebx
cmp ebx, -19
imul ecx
cmp dl, 83
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
xchg cl, dl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 17
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
sbb bl, -79
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
adc dx, 81
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
sbb eax, 1675303701
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
bts bx, 42
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 80
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
test bl, -16
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 40
or di, 2
cmp dl, dl
movsx ebx, bx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and cl, al
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], cx
inc di
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
or edi, -78
sub dl, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

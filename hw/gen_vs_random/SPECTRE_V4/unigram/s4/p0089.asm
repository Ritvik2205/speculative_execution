.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
and bl, dl
add sil, 16 # instrumentation
cmovnz ax, si
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
mov dl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
sub si, dx
test al, dl
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
sub al, sil
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 68
adc cl, al
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rbx, 77
sub bl, dl
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
test edi, edx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
add rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
adc rbx, rdx
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
sub cl, sil
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
movzx si, cl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
sbb al, bl
test sil, cl
btr dx, 245
not dil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
add ecx, 99
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
add al, -57 # instrumentation
cmovno rax, rdi
xor dl, -123
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
cmovo ebx, eax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
or bx, bx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
bt eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

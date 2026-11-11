.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rsi, rsi
xor dl, 42
test esi, 77
btc dx, 119
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
add dl, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 99
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 85
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
mul ax
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
mov rbx, 9101099553822202722
xchg bx, ax
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
test bx, di
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 32
cmovo bx, dx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
sbb dl, -99
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
test sil, cl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
movsx ebx, cx
cmovle bx, bx
mov rcx, rdx
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
cmovnp ax, cx
cmp al, dl
test rbx, 85
imul bx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
sub edx, esi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 77
cmovs edi, esi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
test di, 32
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
dec dl
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
cmovnbe rax, rsi
imul cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

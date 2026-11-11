.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
sub dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
sub al, 98
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 78
and bl, -63
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc eax, -1513455903
and dil, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
mov rcx, rdx
mov rcx, rsi
cmovs bx, ax
add dl, -114 # instrumentation
cmovl dx, cx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], cx
cmovnle ecx, ebx
movzx rdi, ax
xchg cl, cl
add bl, cl
sbb rax, 183833426
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
inc rdi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 91
btc eax, 3
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
cmovnz edi, ecx
or cl, 19
test edx, 573099753
sub cx, ax
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
not edi
mov dl, -34
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 23
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
imul cl
test sil, 54
btr rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
imul dx, si
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
cmp al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

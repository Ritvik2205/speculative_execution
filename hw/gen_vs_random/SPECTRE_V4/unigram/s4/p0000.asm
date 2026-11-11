.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 9
and bx, 95
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 30
and rsi, 89
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 91
sbb eax, 2051746726
add cl, -117 # instrumentation
cmovs rdi, rbx
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
sbb al, -62
cmp cl, cl
add al, -26 # instrumentation
btr eax, 47
inc rax
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 32
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
add dl, 41
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and cx, 17
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
or edx, edi
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
xor rdx, rbx
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
cmp rdx, 28
not dx
adc rbx, 19
sub bl, bl
sub cx, si
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
xor si, 100
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
imul sil
cmovnbe rdx, rsi
imul rdx, rbx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
and rsi, 98
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
sub al, bl
add dl, cl
setnb cl
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
xor al, bl
cmovb di, bx
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -9758
adc dl, cl
not rcx
imul rdi, rsi, -42
bts rbx, rdx
sbb cl, 83
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 11
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 91
sub al, 88
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
xor al, 14
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 91
adc al, bl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 8
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
test rax, -991273825
mov dl, dl
or sil, -5
add sil, 40 # instrumentation
cmovp rdx, rsi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
sbb dl, cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovs cx, cx
and bl, dl
xor ax, -27503
movzx rcx, bx
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

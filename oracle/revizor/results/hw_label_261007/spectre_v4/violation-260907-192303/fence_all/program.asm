.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
lfence
adc al, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
btc word ptr [r14 + rbx], 5 
lfence
sbb rsi, rbx 
lfence
mov dl, -34 
lfence
and ax, 35 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sbb rdx, qword ptr [r14 + rdi] 
lfence
dec dl 
lfence
neg cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor qword ptr [r14 + rsi], -42 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovl bx, word ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rbx], -29 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rdx] 
lfence
xchg dl, dl 
lfence
or al, 109 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov edi, dword ptr [r14 + rsi] 
lfence
add di, -74 
lfence
sbb ax, -26881 
lfence
imul rbx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rdi], -55 
lfence
cmovle edx, esi 
lfence
sbb cl, 20 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rdi], bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnz eax, dword ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rsi], 110 
lfence
test bl, al 
lfence
imul si, bx, -16 
lfence
and cx, 17 
lfence
adc al, -58 
lfence
cmovnz edi, edx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnbe cx, word ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovp edi, dword ptr [r14 + rdx] 
lfence
cmovnb ax, ax 
lfence
cmovnbe rcx, rax 
lfence
sbb bl, -94 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rax] 
lfence
add al, 123 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp ebx, dword ptr [r14 + rcx] 
lfence
cmovnl rbx, rdi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp rsi, qword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rsi], cl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock add byte ptr [r14 + rsi], -12 
lfence
test al, 66 
lfence
cmovb edx, esi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rdi], 29359 
lfence
xor dil, dl 
lfence
or ebx, esi 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock sub qword ptr [r14 + rsi], rbx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdi], dil 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
and edx, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rdx], edx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

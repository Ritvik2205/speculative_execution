.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl 
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5 
sbb rsi, rbx 
mov dl, -34 
and ax, 35 
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi] 
dec dl 
neg cl 
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42 
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax] 
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29 
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx] 
xchg dl, dl 
or al, 109 
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi] 
add di, -74 
sbb ax, -26881 
imul rbx 
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55 
cmovle edx, esi 
sbb cl, 20 
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl 
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx] 
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110 
test bl, al 
imul si, bx, -16 
and cx, 17 
adc al, -58 
cmovnz edi, edx 
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax] 
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx] 
cmovnb ax, ax 
cmovnbe rcx, rax 
sbb bl, -94 
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax] 
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx] 
cmovnl rbx, rdi 
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl 
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12 
test al, 66 
cmovb edx, esi 
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359 
xor dil, dl 
or ebx, esi 
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx 
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil 
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop

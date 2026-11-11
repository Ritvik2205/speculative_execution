.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
setno dil
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
btc ebx, 11
and dl, 10
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
btc di, di
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
cmovo rax, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
setb al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
jmp .bb_0.2
.bb_0.2:
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and al, bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
dec cl
or ax, -10161
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
xor cl, dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

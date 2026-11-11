.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
lea ax, qword ptr [rax + rsi]
dec cx
setnle dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 42
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, -19
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
cmovno si, si
add cx, -103
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
lea rdx, qword ptr [rdx + rsi]
cmp dl, 71
jmp .bb_0.2
.bb_0.2:
add al, -94 # instrumentation
or bl, al
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and al, bl
adc cl, -19
xor rbx, 50
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
sub al, -89
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

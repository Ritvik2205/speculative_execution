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
lock and byte ptr [r14 + rdi], -13
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, -42
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
cmp dl, -115
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
cmp sil, 25
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

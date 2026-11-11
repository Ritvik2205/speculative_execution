.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -13
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
dec cx
lea ax, qword ptr [rax + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
setnle dl
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add cx, -103
cmp dl, -115
xor al, -119
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
lea rdx, qword ptr [rdx + rsi]
cmovno si, si
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

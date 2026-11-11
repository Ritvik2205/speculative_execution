.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, 37
lea si, qword ptr [rdi + rsi + 36]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
test rdi, rax
xor dl, 9
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
add al, -34 # instrumentation
setnp dl
or sil, -44
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
inc dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
cmp bl, bl
cmp al, al
seto dl
and rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
sbb edi, 10
add bl, 55 # instrumentation
lea ebx, qword ptr [rdi + rsi + 14]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
inc al
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
add dl, 85 # instrumentation
cmovp di, di
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

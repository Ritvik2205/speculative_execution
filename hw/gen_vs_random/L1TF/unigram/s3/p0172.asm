.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 93
add al, 71 # instrumentation
setp cl
add al, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 86
btc di, 237
and bl, cl
cmovnb rcx, rcx
jmp .bb_0.1
.bb_0.1:
mov sil, bl
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
mov ax, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
inc al
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

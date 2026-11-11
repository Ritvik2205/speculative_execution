.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, cx
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and bl, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
xor dl, al
xor cl, 55
or rax, 302048971
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 98
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
cmovp si, di
cmovz edi, edi
cmovs ax, bx
cmovnbe rsi, rsi
and cl, cl
and dl, 81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

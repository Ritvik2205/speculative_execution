.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
or rsi, 92
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
movsx eax, bl
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
or rcx, 32
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
add bx, 67
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 6
sub cl, -49
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 67
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
or rsi, 87
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
movsx eax, bl
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
or rcx, 21
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

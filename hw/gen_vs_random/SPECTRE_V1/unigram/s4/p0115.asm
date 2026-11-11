.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -64
cmp al, 49
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 93
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 30
add cl, -73 # instrumentation
setnbe cl
mov edx, ecx
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
xchg di, bx
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
add al, sil
setnz al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

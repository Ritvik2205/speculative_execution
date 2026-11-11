.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
mov bl, 59
setnz bl
sbb eax, 10
cmp bl, 6
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 69
and si, 100
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or cl, 97
xor al, 86
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 31
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

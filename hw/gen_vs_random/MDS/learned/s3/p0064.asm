.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
xor dl, dil
or al, cl
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
bt edi, 254
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
xor edi, 38
or rcx, 62
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
xor cl, -79
lea si, qword ptr [rsi + rbx]
or al, -8
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

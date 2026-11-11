.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or cl, 105
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
cmovb cx, bx
add cl, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

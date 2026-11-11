.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
cmovb ax, di
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
xor rsi, 23
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
lea rdi, qword ptr [rdx + rbx + 3]
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
add cl, al
add sil, sil
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

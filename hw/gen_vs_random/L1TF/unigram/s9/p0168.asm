.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
lea rdx, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
xor al, dl
neg cl
setnz dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

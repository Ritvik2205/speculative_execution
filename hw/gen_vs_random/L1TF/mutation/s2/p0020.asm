.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -52 # instrumentation
not edx
cmovbe rsi, rax
not rcx
setb dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
add ax, 23614
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
add cl, dl
bts ecx, 225
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
cmovz esi, ebx
cmp rax, 16650668
sbb ebx, -116
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
lea bx, qword ptr [rsi + rsi + 53131]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

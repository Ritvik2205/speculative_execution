.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
inc rcx
bts rcx, rdi
add al, -84 # instrumentation
setno al
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
xchg rsi, rcx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 2
jmp .bb_0.1
.bb_0.1:
mov al, -101
xor al, 16
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 30
adc ecx, 88
xchg dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

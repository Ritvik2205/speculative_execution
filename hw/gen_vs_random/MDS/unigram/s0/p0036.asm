.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
or al, -48
and cl, 95 # instrumentation
cmovns rax, rax
test rax, 1732677821
or al, cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
bt dx, cx
and dil, 5
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
btr dx, 30
and cx, 82
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 90
and rdx, 41
cmovb dx, ax
cmovl rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

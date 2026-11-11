.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
not eax
sub dil, dl
xor dl, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 9
and dl, -92
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
adc dil, cl
xchg dx, si
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], bx
add dl, -24 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

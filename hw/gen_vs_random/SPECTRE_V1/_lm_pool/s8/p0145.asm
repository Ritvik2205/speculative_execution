.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
mov bl, dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add cl, dl
btr rsi, 18
test cl, -33
cmp dil, bl
add edi, -91
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

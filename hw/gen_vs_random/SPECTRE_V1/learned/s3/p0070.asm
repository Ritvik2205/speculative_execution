.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
setnb dl
sbb dil, cl
cmovle rax, rsi
sbb al, sil
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp edx, 44
add dil, cl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb dl, dil
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

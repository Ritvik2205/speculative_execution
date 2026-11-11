.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, 66
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
setns bl
adc bl, 88
setle cl
lea rcx, qword ptr [rax + rsi + 32]
add bl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
xor eax, ebx
add dl, -4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
xchg dl, dl
lea dx, qword ptr [rdx + rcx]
add rdx, 95
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
add bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

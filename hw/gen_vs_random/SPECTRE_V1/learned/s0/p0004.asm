.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rdi, rdi
xchg al, al
lea rdx, qword ptr [rbx + rax + 77]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
setnl dl
adc dl, cl
cmp cl, dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, -109 # instrumentation
cmovns rdi, rdi
btc rdx, 14
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
setle cl
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovz ecx, eax
add cl, -82 # instrumentation
sbb si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

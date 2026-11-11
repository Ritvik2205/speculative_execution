.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
or bl, al
btr ecx, esi
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
cmovbe eax, ecx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
and sil, 69
xchg rdx, rdx
setnbe dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

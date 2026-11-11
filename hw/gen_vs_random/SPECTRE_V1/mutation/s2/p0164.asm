.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
cmovnz ax, dx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
cmovns rsi, rdi
add cl, 11 # instrumentation
cmovns edx, edi
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
sbb al, dl
not dx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
add bl, bl
sub al, -82
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

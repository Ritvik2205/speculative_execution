.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dx
sbb al, dl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
add cl, 11 # instrumentation
cmovns edx, edi
cmovnz ax, dx
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
cmovns rsi, rdi
lea cx, qword ptr [rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
xchg al, bl
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
add bl, bl
sub al, -89
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

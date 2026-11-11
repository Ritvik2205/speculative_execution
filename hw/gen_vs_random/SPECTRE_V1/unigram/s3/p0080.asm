.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 23
or dl, dil
xor cl, 78
lea cx, qword ptr [rsi + rdx + 61792]
bts cx, 60
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 85
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
setp bl
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
add edx, 84
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
adc sil, sil
and rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

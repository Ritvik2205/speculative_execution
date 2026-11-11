.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
sets dil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
btc ax, 20
adc al, 49
xor rdx, 63
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 66
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
setnz cl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
mov dil, 27
lea rcx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
test ax, 18607
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

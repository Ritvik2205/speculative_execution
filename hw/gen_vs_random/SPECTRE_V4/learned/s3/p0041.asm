.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor cl, cl
test eax, -31785616
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
test dl, sil
bts ax, 159
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
adc al, dil
adc dil, 124
sbb dl, -106
cmp al, 98
or di, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

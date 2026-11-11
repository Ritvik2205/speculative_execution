.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
add bl, 26 # instrumentation
sbb dl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 65
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
cmovnbe dx, di
adc dl, 58
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
cmovnl rax, rbx
btr rax, 1
xor dl, 85
add cl, -47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 31
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -26 # instrumentation
adc ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
cmovnbe bx, cx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
add cl, -26 # instrumentation
cmovnp di, cx
sbb bl, 97
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
add bl, 28 # instrumentation
setnz bl
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

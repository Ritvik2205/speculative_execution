.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, -101
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
cmovnle rax, rax
lea rcx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -32
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 99
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
loopne .bb_0.2
jmp .exit_0
.bb_0.2:
cmp rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
add ecx, edi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

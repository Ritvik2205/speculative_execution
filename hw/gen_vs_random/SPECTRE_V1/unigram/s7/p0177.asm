.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
setnl dil
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 17
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
sbb dil, -106
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc cx, cx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 61
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
movzx eax, bl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
inc dil
cdq
neg esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

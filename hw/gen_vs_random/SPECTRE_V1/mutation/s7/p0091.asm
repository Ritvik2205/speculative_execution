.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 33 # instrumentation
setnz bl
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
add cl, 103 # instrumentation
cmovno edi, ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
setnb cl
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
lea di, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
lea bx, qword ptr [rdi + rdi]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
add bl, 26 # instrumentation
sbb al, dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 85
setnp al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -127
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
cbw
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 19
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

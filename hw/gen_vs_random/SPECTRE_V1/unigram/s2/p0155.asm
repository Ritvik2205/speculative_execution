.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
lea esi, qword ptr [rax + rdx + 54]
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
bt rbx, rcx
lea cx, qword ptr [rax + rcx]
lea ax, qword ptr [rsi + rax]
add cl, -26 # instrumentation
cmovnp bx, di
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 31
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
sub esi, ebx
setns bl
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

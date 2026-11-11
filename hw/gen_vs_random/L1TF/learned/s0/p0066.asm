.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
sub sil, 45
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
cmovp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdx
bt edx, 63
mul rdi
xchg si, cx
and bl, 125
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 75
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
xchg dil, bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

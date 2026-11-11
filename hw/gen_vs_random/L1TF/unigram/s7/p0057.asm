.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
seto al
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 25
add dil, 12 # instrumentation
cmovnb edx, edi
imul di, bx, 12
sub ebx, edx
btc dx, di
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
setb dil
jmp .bb_0.1
.bb_0.1:
cmovns rdx, rsi
inc bl
or bl, -5
btc rsi, rdi
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

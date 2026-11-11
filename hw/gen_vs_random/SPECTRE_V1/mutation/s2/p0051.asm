.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp bx, bx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
setz cl
btr eax, 55
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
test rax, rbx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
seto sil
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
cmovl cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

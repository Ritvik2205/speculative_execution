.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, 55
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
setz cl
and rcx, rcx
cmovnp bx, bx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
test rax, rbx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
cmovl cx, ax
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
seto sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

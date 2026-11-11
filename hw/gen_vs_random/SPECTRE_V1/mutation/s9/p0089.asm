.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, 55
cmovnp bx, bx
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rcx, rcx
setz cl
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl cx, ax
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
seto sil
test rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
lea ecx, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
lea rcx, qword ptr [rbx + rbx + 11064]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
inc dl
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

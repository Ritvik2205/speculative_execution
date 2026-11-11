.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
add sil, -104 # instrumentation
lea rsi, qword ptr [rcx + rax + 95]
adc cx, -30
setno sil
or si, si
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rcx + rcx + 8848]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

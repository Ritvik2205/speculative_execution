.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 78
lea ecx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 87
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 42
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 96
cmovbe rbx, rcx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
add cl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
xchg sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
mul cl
cmovnbe cx, bx
movsx ax, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
xchg rcx, rbx
add eax, -2019837038
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
dec bl
add cl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
test cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle dl
dec bx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
movsx rcx, bx
add bl, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 73
sbb esi, 27
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xchg dl, bl
lea dx, qword ptr [rdx + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
xor ebx, -81
not bx
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add edx, 56
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

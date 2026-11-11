.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
cmovnl rdi, rbx
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -73 # instrumentation
setnbe cl
sub eax, edx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
and cl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

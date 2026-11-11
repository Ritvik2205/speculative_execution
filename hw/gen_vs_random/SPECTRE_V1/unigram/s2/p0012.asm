.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and bl, -43
add al, 110 # instrumentation
add cl, -22 # instrumentation
cmovnz ecx, ecx
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 29
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 33
cmovle ax, ax
lea esi, qword ptr [rsi + rcx + 75]
adc cl, -19
add al, -25 # instrumentation
sbb bx, dx
cmovnle rdi, rax
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
cmovnbe si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

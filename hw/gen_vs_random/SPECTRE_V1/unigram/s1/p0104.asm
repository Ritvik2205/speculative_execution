.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, sil
lea rax, qword ptr [rbx + rcx]
cmovs bx, ax
lea rcx, qword ptr [rbx + rax + 48]
cmovno dx, bx
add al, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
inc al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
btr si, ax
cmovnle cx, bx
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
inc ebx
cmovnbe rcx, rax
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
add sil, 103 # instrumentation
cmovno ebx, esi
or sil, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

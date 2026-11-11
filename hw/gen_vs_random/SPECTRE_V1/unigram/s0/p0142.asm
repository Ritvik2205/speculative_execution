.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 29
add cl, -42 # instrumentation
lea cx, qword ptr [rbx + rdi]
lea rdx, qword ptr [rsi]
add rsi, -60
bt cx, bx
add rsi, -60
bts ax, 54
and dl, -111
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
add cl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
xor ebx, esi
dec bx
add dil, cl
sbb edi, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

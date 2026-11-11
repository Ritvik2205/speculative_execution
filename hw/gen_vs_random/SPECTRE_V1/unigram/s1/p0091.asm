.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -33
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 100
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
cmovnp rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 40
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
add bl, -95
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
add dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
or edx, 3
add bx, -65
lea edx, qword ptr [rcx + rcx + 20]
lea dx, qword ptr [rdx + rax]
or cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

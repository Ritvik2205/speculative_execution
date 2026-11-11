.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 11
not sil
not sil
xor dil, -70
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
btr bx, dx
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and dil, dil
or dil, sil
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test ebx, -2015966884
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

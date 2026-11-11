.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and bl, 68
and sil, -9
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and sil, -69
and bl, 68
test al, sil
jmp .bb_0.1
.bb_0.1:
xor rdi, -9
test cx, 401
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and eax, -574348013
and edx, -44
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
lea ecx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

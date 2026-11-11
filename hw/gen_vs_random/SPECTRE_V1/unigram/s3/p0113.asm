.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
mul al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
lea ebx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 29
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 89
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, rdi
setno al
sbb dx, 23
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

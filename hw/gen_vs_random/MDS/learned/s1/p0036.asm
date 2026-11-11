.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or al, -24
jmp .bb_0.1
.bb_0.1:
and eax, -574348013
and cl, -19
or al, bl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 69
and cl, -19
and dl, dil
xor bl, dil
or dl, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

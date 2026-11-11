.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rcx + rcx + 37]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
cmovnbe cx, si
sub dil, al
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 36
cmovnle rax, rbx
js .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 21
xchg cl, sil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
btc edi, edi
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 74
lea ecx, qword ptr [rdi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

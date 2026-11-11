.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, 42
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
or ecx, 6
lea eax, qword ptr [rbx + rdi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea rdx, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

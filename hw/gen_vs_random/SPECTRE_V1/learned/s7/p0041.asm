.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
cmp rdx, -19
lea rsi, qword ptr [rdi + rax + 49498]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
add cl, dil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
lea rcx, qword ptr [rax]
add dil, 72
cmovs si, di
xor rcx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, 13
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 71
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -29 # instrumentation
lea rbx, qword ptr [rdx + rdx + 29]
cmovno ebx, ecx
xor dl, 66
add cl, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
cmovnbe rbx, rdi
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

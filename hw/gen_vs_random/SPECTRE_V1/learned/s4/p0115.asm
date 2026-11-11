.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -108 # instrumentation
sbb dl, 77
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add dl, 20 # instrumentation
cmovnbe rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
mul rdi
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, -41 # instrumentation
xchg dl, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 75
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
sbb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

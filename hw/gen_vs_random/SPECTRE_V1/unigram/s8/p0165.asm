.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
setb cl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 51
sbb dl, 127
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 65
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
bt ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
sbb dl, 127
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

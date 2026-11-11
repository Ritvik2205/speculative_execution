.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
sub bl, al
test bl, -8
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 10
sub dil, -32
test dil, -116
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
sub cl, bl
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub al, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 70
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

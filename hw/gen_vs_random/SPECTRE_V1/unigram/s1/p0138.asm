.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bl
add cl, 36 # instrumentation
sub rbx, rbx
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 61
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
add si, 84
setnb dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
bts di, 230
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

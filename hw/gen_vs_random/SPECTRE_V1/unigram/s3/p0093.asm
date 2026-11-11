.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 58
cmovl ax, bx
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
cmp dl, 71
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 78
dec dl
sub al, al
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
xor dx, -128
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
add cl, -29 # instrumentation
add cl, -70 # instrumentation
setnp cl
cmovno si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

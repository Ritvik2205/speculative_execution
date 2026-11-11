.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
lea rdx, qword ptr [rax + rbx + 16]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 28
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
sub rax, -679751639
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -26 # instrumentation
adc esi, ebx
test al, 70
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
sbb al, al
setns cl
cmovnbe ax, ax
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
btc rax, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

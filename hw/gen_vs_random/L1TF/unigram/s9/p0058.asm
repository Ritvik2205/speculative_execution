.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz dl
and bx, 75
test cx, di
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 43
add cx, cx
xor dl, 9
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 15
setnbe dil
cmovns rsi, rsi
bt rdx, 131
add cl, -41 # instrumentation
adc dx, si
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

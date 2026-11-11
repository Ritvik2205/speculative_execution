.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add cl, -98 # instrumentation
setp dil
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
sub ebx, 89
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
btc di, si
lea si, qword ptr [rax + rax]
lea dx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
neg cl
test edi, ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

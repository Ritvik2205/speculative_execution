.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
cmp rax, 16650668
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
add ax, -24961
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
add dl, -70
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

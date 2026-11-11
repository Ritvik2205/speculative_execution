.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
mul rcx
adc dl, 107
test dl, 113
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
btr eax, 55
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 51
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
sub cl, sil
lea edx, qword ptr [rdx + rdx + 98]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

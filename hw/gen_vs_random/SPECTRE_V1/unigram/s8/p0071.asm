.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
xor al, bl
add cl, -119 # instrumentation
adc dl, dil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
xor si, 69
cmovle rdi, rbx
lea ebx, qword ptr [rsi + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
adc dl, cl
cmp sil, dl
test al, 42
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

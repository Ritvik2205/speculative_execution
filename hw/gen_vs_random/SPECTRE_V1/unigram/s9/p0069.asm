.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
sub rax, rdx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rbx], bx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdi
add sil, bl
adc ax, si
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
test al, -126
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], si
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

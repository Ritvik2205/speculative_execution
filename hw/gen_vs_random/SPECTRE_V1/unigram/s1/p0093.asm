.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
setz sil
cmp sil, al
sub cl, bl
cmp dl, dil
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
cmovz rsi, rax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
not di
add rax, 913062684
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
lea ecx, qword ptr [rbx + rbx + 57]
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

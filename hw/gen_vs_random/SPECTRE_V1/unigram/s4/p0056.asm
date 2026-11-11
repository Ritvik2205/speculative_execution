.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 9
adc bx, 39
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
adc di, dx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 91
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
neg rdi
add dil, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
dec eax
lea dx, qword ptr [rcx]
movsx ax, dil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rbx
imul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

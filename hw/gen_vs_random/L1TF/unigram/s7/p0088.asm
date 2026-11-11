.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
inc rax
test bl, 45
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
test eax, esi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
jmp .bb_0.1
.bb_0.1:
cmovl rax, rax
mov cl, cl
cmovnp rdi, rdi
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and al, -68
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 76
cmovo rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

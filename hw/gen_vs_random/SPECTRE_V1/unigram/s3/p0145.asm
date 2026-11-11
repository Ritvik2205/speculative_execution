.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
or al, dl
bt ebx, eax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 61
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rcx], cx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, -78
cmovno rax, rax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
add dl, -94 # instrumentation
or al, dl
add dl, 47
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
bt rbx, rsi
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sub ebx, 75
setnb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

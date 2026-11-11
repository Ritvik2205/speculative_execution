.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
not esi
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
test rax, rdi
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
add al, -80
and dl, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

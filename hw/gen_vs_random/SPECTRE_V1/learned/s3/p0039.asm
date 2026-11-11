.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 56 # instrumentation
cmovns edi, esi
add rax, 1503210561
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -29 # instrumentation
lea rbx, qword ptr [rdx + rdx + 11]
xchg rcx, rcx
cmovbe rcx, rdi
add sil, 36
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
cmovl esi, edi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], -103
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 7
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rcx
add sil, dil
lea rcx, qword ptr [rcx]
mov dil, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
xor dil, -37
add bl, -76 # instrumentation
cmovnle ax, si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
not al
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
sub rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
movsx cx, dl
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

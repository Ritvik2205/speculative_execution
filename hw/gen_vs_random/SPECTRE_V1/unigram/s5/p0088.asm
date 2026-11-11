.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
cmovp ax, si
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
sub dil, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
lea rdx, qword ptr [rax + rcx]
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
xor rdi, 14
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 33
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 17
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

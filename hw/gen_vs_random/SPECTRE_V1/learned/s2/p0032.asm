.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 67
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
mov bl, bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
sub rbx, -128
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
movsx dx, cl
xor eax, 1034314125
lea rbx, qword ptr [rax + rdi]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
xor edi, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

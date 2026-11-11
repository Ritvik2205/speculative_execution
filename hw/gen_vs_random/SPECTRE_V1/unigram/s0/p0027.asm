.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 51
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
lea rdx, qword ptr [rax]
movsx rcx, sil
adc bl, dil
add sil, 20 # instrumentation
cmovnbe rdx, rsi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg edi, edx
add dl, bl
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
btr ebx, 22
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovnp si, bx
lea rbx, qword ptr [rdx + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

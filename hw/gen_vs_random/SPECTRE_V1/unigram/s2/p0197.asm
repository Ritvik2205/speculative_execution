.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
movzx edi, dl
lea di, qword ptr [rdx + rbx]
cmovnbe edi, esi
setns dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
or rax, rsi
xor rdx, 82
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
add bl, bl
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
movsx cx, dl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx bx, dl
cmovs ecx, eax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 57
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
inc ax
setno dl
add bl, -89 # instrumentation
sbb ebx, ecx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rcx
adc sil, bl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

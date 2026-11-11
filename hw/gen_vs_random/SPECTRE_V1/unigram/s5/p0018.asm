.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe cx, si
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rcx
add cl, 36 # instrumentation
sub rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
add cl, 43 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -62
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
cmp al, -77
cmovz esi, eax
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not sil
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
add al, 123 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
cmovnl edi, ecx
xchg bl, dl
add di, 44
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
sub sil, dl
sub dil, -111
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
test bl, -8
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

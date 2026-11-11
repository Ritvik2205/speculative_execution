.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, rsi
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
mov cl, sil
setz bl
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 55
add al, -94 # instrumentation
cmovnle rcx, rsi
cmovs bx, si
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 87
movsx edx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

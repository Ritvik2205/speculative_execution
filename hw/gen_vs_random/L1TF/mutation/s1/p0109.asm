.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
add bl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rsi
cmovl ecx, edi
lea ebx, qword ptr [rdi + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and edi, ecx
xor eax, -69
xor cl, al
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and dl, dl
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
xchg si, di
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

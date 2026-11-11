.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
lea ebx, qword ptr [rdi + rdi]
cmovl ecx, edi
add bl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, dl
xchg si, di
xor cl, al
xor eax, -69
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and edi, ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

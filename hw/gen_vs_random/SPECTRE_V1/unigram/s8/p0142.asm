.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 74
add sil, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 44
and al, -23
lea rdx, qword ptr [rsi + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rdx]
sub cx, 27
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -29 # instrumentation
add dl, -70 # instrumentation
setnp dl
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
cmovbe si, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 80
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
bt edx, edi
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
cmovno ecx, esi
cmovnle rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

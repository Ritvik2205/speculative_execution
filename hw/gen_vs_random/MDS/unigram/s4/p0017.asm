.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
cmovnbe ebx, edx
bt rbx, rax
xor cl, 24
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 27
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 35
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
cmovle rax, rdi
and cl, -71
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 54
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and sil, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

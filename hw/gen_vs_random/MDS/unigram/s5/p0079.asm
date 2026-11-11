.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and cx, -8
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 82
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
not cl
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
not cl
jmp .bb_0.1
.bb_0.1:
cmovnbe edi, ecx
not sil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
cmovb dx, dx
and si, -121
and dl, 37 # instrumentation
cmovnbe dx, ax
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

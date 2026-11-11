.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
and cl, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
or edi, edi
and dl, 125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
xor sil, dil
cmovnp bx, di
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
test edi, ebx
bt edx, 73
bts bx, 3
and bl, 45 # instrumentation
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

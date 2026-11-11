.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, 12
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
bt rax, 24
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
and cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
and dx, 42
cmovo bx, ax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
bt edx, 254
or bx, 9
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
or dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
or dl, cl
and rdi, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

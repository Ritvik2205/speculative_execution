.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
xor sil, al
jmp .bb_0.1
.bb_0.1:
bt edx, ebx
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 100
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
sbb sil, cl
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

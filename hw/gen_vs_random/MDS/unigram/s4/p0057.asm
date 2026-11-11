.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
or cl, al
or dx, si
bts edi, 72
bt rax, rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and cl, 127
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 66
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and cl, sil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rsi], cx
and dl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
xor rdx, rbx
bts rdi, 24
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 68
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and dil, -62
xor al, -4
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
or dl, sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and cl, 84 # instrumentation
cmovbe cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
cmovbe edx, edi
xor cl, dl
cmovp edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

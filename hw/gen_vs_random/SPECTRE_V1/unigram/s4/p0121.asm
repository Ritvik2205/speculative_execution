.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
add cl, 44 # instrumentation
cmovz esi, edx
not rbx
adc bl, 102
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, -1161451853
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, rbx
lea rdx, qword ptr [rbx + rcx]
or rsi, rsi
sbb bl, -41
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
mul cx
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

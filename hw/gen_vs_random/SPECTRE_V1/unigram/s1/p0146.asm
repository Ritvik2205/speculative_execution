.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmp rcx, rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
cmovnbe rcx, rdx
cmovp ecx, edi
lea rcx, qword ptr [rax + rdx]
mov cl, sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 17
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc cx, 63
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
or bl, bl
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
cmp esi, eax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovnbe cx, si
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
add dl, 77
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 78
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
lea bx, qword ptr [rsi + rdi + 46]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
sbb al, 49
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -117 # instrumentation
not rbx
btr edx, esi
lea dx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
cmovs ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
add edx, 70
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
cmovnbe rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

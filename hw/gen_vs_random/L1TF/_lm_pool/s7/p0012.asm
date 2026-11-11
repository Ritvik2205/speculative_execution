.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
cmp al, -119
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
or si, 63
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
jmp .bb_0.2
.bb_0.2:
test dil, bl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
sbb al, 61
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
lea rax, qword ptr [rsi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

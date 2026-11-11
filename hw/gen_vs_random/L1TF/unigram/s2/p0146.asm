.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
sbb dl, al
neg ebx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
cmovo eax, edx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
adc dl, -12
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
lea bx, qword ptr [rdx + rdx + 70]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
or al, sil
xor sil, dil
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

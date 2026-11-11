.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
add cl, -51 # instrumentation
cmovl ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
add sil, al
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
add sil, -76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 60
btr rax, rdi
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
cmp cl, bl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

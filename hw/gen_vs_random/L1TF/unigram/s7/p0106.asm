.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 79
add dl, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
add dl, 100 # instrumentation
lea cx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
setz bl
sbb ecx, 6
add sil, 104 # instrumentation
mov esi, 25
cmovnbe rdi, rbx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
add esi, -124
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
cmp rdi, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

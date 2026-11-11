.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, 86
mov rsi, 8418490294875847673
add bl, -107 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
add sil, -6 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
dec bl
xor dil, 77
bt di, cx
setnz cl
btr cx, 9
test bl, 99
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rbx + rcx + 6]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

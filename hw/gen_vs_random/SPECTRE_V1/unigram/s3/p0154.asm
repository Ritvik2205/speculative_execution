.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
not cx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
movsx ebx, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
btr bx, cx
xor dil, -37
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
setnle bl
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 18
sbb cl, al
add sil, 33 # instrumentation
setnz sil
cmovnbe eax, ebx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

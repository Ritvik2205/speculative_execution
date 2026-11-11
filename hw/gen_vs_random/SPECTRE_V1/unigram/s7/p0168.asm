.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz cx, cx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 2
lea rsi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
adc al, cl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 37
btr rsi, rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dil
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 54
bt rbx, rbx
btr cx, 33
movsx rdi, cx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and ebx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

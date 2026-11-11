.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 20
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
or dil, al
cmovnz rcx, rax
test edx, ecx
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
xor bl, 38
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
mul esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 75
add dl, 10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 93
add dl, 125
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

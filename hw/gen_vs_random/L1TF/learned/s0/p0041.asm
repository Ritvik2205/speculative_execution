.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and dl, cl
xor al, dil
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
sub bl, sil
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

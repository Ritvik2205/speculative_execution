.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dil
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add dl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
test cl, -120
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
adc al, -92
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 55
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
sub bl, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

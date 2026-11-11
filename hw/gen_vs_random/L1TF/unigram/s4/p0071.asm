.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
lea rdi, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 47
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
jmp .bb_0.1
.bb_0.1:
xor eax, -117
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
add si, 7
bt cx, di
setnbe al
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

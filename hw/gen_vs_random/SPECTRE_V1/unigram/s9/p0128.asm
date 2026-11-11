.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
movsx rsi, di
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 19
and rdi, 34
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
xor si, 94
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and dx, 26
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

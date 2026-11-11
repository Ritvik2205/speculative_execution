.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 64
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
or edi, ecx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 16
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
imul al
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
cmovno rax, rcx
or rcx, rdx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
lea dx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 36
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
and cl, 8
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
cmovb edi, ebx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 37
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

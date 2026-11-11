.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
sbb dil, dil
sub edx, 1
add cl, -110 # instrumentation
setbe cl
test al, sil
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
imul rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

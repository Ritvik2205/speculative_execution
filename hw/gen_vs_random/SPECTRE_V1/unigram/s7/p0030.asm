.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rcx, dx
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
mul si
setnbe sil
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
lea di, qword ptr [rdi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

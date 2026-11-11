.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
add bl, 45 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
cmovb edi, ebx
sbb cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and cl, 86
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
test cx, dx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
add cl, 32 # instrumentation
cmovnbe rdx, rdi
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
test dil, al
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

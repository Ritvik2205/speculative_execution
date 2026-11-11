.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdi, 110
inc bl
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
add al, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
add al, 71 # instrumentation
setp dl
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
test si, 27
sbb dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], di
and bl, 125
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

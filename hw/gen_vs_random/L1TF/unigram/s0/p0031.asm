.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 29
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
not esi
adc rsi, 33
lea rbx, qword ptr [rbx + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 56
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
not rdx
inc rdx
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 92
xchg cl, cl
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
sub ax, 7297
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
cmp edi, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

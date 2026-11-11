.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
xchg dil, cl
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
cmovz eax, ebx
add cl, -127
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 36
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
test sil, 47
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

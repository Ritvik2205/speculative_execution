.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rax, 977059290
add sil, 2
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
adc rax, 1310333622
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
adc cl, dl
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
mov di, 18
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
lea di, qword ptr [rax + rdi]
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

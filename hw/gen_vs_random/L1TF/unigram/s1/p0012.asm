.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edx, edi
cmp cl, -89
cmp rdi, 18
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xor di, 27
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], sil
cmovb edx, ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
add sil, 65 # instrumentation
cmovo rsi, rcx
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and ax, 37
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
xor cl, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

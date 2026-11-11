.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
cmovnb ebx, edi
cmovp si, cx
setnbe cl
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
add dl, sil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
xchg rcx, rax
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

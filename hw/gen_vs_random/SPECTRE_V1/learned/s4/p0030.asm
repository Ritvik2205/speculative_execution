.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
setno bl
setno bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
lea edx, qword ptr [rbx + rsi + 30]
dec rbx
bt ecx, 198
test cl, -31
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
lea rdx, qword ptr [rdi + rcx]
lea bx, qword ptr [rcx + rcx + 13]
test cl, -49
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
xchg dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rdi
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
add cl, -93 # instrumentation
not rdx
bt rbx, 224
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
setnle dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mul bl
cmovnbe rsi, rcx
or ebx, edi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
add eax, -371144449
bt eax, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

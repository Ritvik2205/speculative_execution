.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
lea rbx, qword ptr [rax + rcx + 89]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 12
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 8
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], di
bswap edi
setnbe dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

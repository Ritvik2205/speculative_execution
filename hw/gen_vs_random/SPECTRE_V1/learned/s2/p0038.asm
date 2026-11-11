.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
test cl, dil
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
setnl dl
cmp al, al
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno rbx, rax
add cl, -42 # instrumentation
adc dil, al
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
add dil, 55 # instrumentation
lea edi, qword ptr [rax + rdx + 11]
add bl, 77 # instrumentation
sbb ebx, -34
and bx, dx
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
add bl, 113 # instrumentation
setbe dil
jmp .bb_0.1
.bb_0.1:
add dl, bl
mov rax, rdi
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
lea rdi, qword ptr [rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

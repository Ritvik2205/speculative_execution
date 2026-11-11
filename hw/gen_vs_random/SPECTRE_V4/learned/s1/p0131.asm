.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 25
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
cmovns rsi, rbx
or eax, 2007177863
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -41 # instrumentation
xchg dl, sil
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 53
test edi, -1249897727
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 49
mov rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

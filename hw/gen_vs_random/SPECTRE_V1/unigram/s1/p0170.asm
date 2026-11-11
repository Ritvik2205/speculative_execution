.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, esi
lea edi, qword ptr [rcx + rdx + 47]
add cl, 29 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 38
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 52
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, dx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
mov rbx, rax
add bl, 36 # instrumentation
setnl sil
sbb al, -61
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea dx, qword ptr [rcx + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
add dl, 63 # instrumentation
cmovle ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

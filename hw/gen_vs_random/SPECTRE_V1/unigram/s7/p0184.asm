.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx + rbx + 56]
add al, -47 # instrumentation
setbe al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rbx]
lea edi, qword ptr [rbx]
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
add cl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 88
setl al
cmovb dx, di
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 46
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
setns dl
xor dl, al
mul si
bts si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

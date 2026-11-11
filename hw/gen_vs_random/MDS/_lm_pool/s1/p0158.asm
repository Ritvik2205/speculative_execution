.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
bt cx, dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
or cl, 30
jmp .bb_0.2
.bb_0.2:
test al, dl
xor bl, al
xor al, -89
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
bts edi, 248
test rax, 1949278494
and al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
jmp .bb_0.3
.bb_0.3:
cmovnp rdi, rbx
btr eax, ebx
bt si, dx
bt ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

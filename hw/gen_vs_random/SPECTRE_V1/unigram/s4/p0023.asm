.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp si, cx
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
add al, -29 # instrumentation
add al, -70 # instrumentation
setnp al
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
add dl, 117 # instrumentation
sbb rax, rdx
cmp rbx, rax
inc dl
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
lea edx, qword ptr [rdx + rbx]
cmovp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

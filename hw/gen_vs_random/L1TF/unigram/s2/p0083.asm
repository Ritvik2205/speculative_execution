.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
not bx
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
setbe dil
inc edx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovnz dx, dx
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and bl, dil
inc eax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

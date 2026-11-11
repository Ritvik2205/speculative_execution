.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto dl
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
sub dil, -111
add si, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle bx, cx
dec dl
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
cmovle di, bx
add dil, 33 # instrumentation
setnz dil
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and cx, 10
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 26
bswap rax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

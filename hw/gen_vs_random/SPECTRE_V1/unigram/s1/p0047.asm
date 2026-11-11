.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 70
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
add al, -27 # instrumentation
setle al
and rsi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rsi]
add dil, cl
bswap edx
test si, bx
inc rsi
mov rdx, 3609511260715352814
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
sbb al, cl
cmp dx, 82
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

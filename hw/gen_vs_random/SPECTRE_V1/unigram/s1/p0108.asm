.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi + rdi + 8444]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
bts bx, 14
add dl, 38 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
add cl, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -73 # instrumentation
btr dx, ax
lea bx, qword ptr [rax + rax + 46]
setnp sil
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
setbe al
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
add dil, al
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 13
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
xchg dl, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -65
sbb bl, cl
bt di, di
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
add cl, -93 # instrumentation
setnb cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
add dil, -51 # instrumentation
cmovno rdi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
adc sil, -77
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

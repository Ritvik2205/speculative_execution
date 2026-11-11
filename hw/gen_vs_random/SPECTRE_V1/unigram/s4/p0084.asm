.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, 109
not dl
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
add dl, cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
cmovle rax, rsi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 82
xor bl, -38
test ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
btr rdi, 76
or di, 0b1000000000000000 # instrumentation
bsf dx, di
add al, 13 # instrumentation
cmovno rax, rcx
or rbx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

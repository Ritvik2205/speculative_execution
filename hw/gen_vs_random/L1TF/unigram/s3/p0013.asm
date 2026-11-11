.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rcx, rdx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 89
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
sbb rbx, -117
cmp eax, eax
jmp .bb_0.1
.bb_0.1:
cmovnp si, ax
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
xor cl, 89
add bl, 68
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
add dl, dl
cmovbe ebx, eax
cmp dx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

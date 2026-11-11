.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
test eax, 158941032
btr ax, si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
and bl, -15 # instrumentation
cmovnp bx, bx
btr ax, ax
cmovbe edi, edi
xor bl, 67
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
test rdx, 9
not al
btc rsi, rbx
and rcx, -63
and bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test bl, cl
cmovo ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
test dl, 27
btc dx, 146
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 81
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
or dil, al
jmp .bb_0.1
.bb_0.1:
and cl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], dx
and bl, 68
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rax, -731384280
not edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

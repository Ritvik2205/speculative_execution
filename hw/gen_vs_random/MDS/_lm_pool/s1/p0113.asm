.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor ax, -4010
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
xor cx, -18
or bl, bl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 67
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test bl, dil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
jmp .bb_0.2
.bb_0.2:
cmovnp rax, rcx
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
btc esi, 199
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
or rax, 1020005579
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

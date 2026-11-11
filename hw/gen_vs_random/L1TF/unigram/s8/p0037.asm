.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno al
bts rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
sbb dil, dil
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 43
or ax, 11821
test si, 80
cmovnp dx, di
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
or bl, -5
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
xor eax, -603819833
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

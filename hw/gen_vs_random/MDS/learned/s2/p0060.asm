.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 39
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 69
or cl, bl
xor al, -89
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and ax, -4410
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

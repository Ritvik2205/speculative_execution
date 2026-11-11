.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 93
or dx, 55
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 40
btr rsi, 73
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and al, dl
xor si, 33
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 46
xor bx, 68
cmovnle ecx, eax
xor ebx, 58
btr si, 83
and bl, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 62
cmovns ecx, ecx
xor ecx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
cmovo dx, ax
bt esi, 3
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
cmovle rcx, rdi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 84
cmovb rsi, rbx
bts di, 73
and dl, 120 # instrumentation
cmovnle si, ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
or cl, -36
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
xor rsi, -117
and dx, 60
or esi, -110
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

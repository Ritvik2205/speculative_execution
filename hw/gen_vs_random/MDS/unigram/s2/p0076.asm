.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rsi, 89
and ax, 13090
or edi, -88
xor al, 99
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovno rsi, rsi
and dil, al
and dl, -41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
xor bl, 67
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and bl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
xor cl, bl
xor dil, dil
cmovle bx, si
cmovp si, di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

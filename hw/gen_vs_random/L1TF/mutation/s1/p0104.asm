.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -121 # instrumentation
movsx si, cl
xchg ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and al, bl
add bl, -9 # instrumentation
adc rax, 1544006018
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
add cl, -72 # instrumentation
cmovp edx, edx
test rbx, rdx
lea rdx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
btr ax, di
btr edi, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

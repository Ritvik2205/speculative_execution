.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
test al, -70
lea si, qword ptr [rbx + rax + 26]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
add sil, -61
and al, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

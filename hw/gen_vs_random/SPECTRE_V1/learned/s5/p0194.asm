.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and dl, -92
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 83
and dil, -93
cmp al, bl
lea cx, qword ptr [rdx + rbx]
add dl, sil
sbb eax, 1830317432
lea bx, qword ptr [rdi]
bswap rax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

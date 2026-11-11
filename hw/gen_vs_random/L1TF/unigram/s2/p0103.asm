.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, dl
adc esi, 16
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 16
add si, 88
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
test rax, -991273825
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 36
inc ecx
or dl, 11
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
or eax, ecx
and rcx, 99
inc sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
bts rax, 77
or rsi, 59
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
bts ecx, 184
test dl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

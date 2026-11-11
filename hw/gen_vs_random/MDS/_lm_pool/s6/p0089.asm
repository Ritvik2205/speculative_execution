.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
xor si, 80
test sil, 41
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
xor bl, dl
xor rcx, 71
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
xor al, cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
test al, 22
test cl, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

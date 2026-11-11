.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and dil, 125
btr dx, bx
bts rsi, rax
not sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
bts rcx, 26
and dx, 60
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
or dl, 85
xor cl, 55
and eax, 366961170
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 29
jmp .bb_0.2
.bb_0.2:
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

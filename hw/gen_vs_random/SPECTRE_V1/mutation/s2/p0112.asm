.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rdi, rdi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
add dl, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
movsx si, dl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
or dl, dl
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovle cx, ax
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
dec esi
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
xor ax, 17976
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 40
mov cl, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

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
jmp .bb_0.2
.bb_0.1:
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
add dil, 27
sbb dl, -23
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
add dl, dil
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

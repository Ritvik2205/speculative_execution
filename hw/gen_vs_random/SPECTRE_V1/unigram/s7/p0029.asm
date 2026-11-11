.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and cl, dil
add sil, sil
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 18
jb .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, -82
seto dil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 64
add dil, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
add al, dl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
setnl dil
add dil, 24 # instrumentation
lea rdi, qword ptr [rdi]
add al, 19 # instrumentation
setnz bl
lea rsi, qword ptr [rbx + rax + 65]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

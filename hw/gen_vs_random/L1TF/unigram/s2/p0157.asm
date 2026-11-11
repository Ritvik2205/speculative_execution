.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
bts bx, 54
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 25
jmp .bb_0.1
.bb_0.1:
add cl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
test esi, 3
lea rbx, qword ptr [rax + rdx + 84]
or rax, 1447934463
test edi, 71
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
inc sil
add al, -15 # instrumentation
cmovl rax, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
sbb bl, dl
add dil, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

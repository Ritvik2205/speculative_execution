.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 27
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 94
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
xor dl, cl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 1
cmp rdi, rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setnl dl
cmovl rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
inc cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
add al, -106
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs eax, eax
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 11
xor edx, 101
setnle bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ebx
inc sil
setl dl
test dl, 43
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
adc sil, bl
cmovs rax, rsi
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
add dl, 43 # instrumentation
lea rax, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

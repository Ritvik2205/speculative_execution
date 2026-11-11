.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
dec di
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
add sil, 18
jmp .bb_0.2
.bb_0.2:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -99
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
setl bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -39
adc ebx, edx
cmovo ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

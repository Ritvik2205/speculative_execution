.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
cmovl bx, si
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
dec di
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -39
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
cmovo ebx, eax
add sil, 18
adc ebx, edx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -99
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
setl bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

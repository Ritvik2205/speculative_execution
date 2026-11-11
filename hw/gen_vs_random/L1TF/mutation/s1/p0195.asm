.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
dec di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
cmovo ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
add sil, -111
adc ebx, edx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -11
setl bl
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

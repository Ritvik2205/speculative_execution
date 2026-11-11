.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 81
btr cx, 54
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and dil, cl
adc rcx, 43
add bl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rbx, 90
cmovnle esi, edx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
add al, -56 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
cmovle bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setl cl
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
xchg edx, esi
add dl, -53 # instrumentation
lea rax, qword ptr [rcx + rsi + 9]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rsi + rsi + 57]
sets bl
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
cmp cl, -89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
or bx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

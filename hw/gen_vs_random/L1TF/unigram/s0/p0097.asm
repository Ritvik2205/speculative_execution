.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
test dil, -126
cmp dl, -56
setb sil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
cmovl rax, rsi
xor ax, 34
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or edx, ecx
lea rax, qword ptr [rdi + rax + 36248]
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

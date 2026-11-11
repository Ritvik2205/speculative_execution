.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, 81
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
add al, 56
sbb bl, -88
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 87
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
test rdi, 21
cmovl ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
cmp dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
btc ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
test rbx, 99
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
test esi, 19
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
cmp al, 46
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
xor bl, dil
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

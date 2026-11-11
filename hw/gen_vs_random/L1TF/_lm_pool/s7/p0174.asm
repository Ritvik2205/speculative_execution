.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or dil, -113
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and rcx, rsi
add al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

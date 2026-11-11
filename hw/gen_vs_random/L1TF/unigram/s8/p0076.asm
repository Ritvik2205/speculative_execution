.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, rax
or dil, -113
neg cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 46
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 99
lea bx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or ax, cx
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
add al, -102
xor al, al
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 86
imul dl
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

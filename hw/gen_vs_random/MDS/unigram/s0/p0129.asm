.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
or dl, -21
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
or cl, dil
and bl, 107 # instrumentation
cmovbe cx, ax
cmovns bx, ax
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], bx
test dil, -51
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test al, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
or dil, -78
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
test bl, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

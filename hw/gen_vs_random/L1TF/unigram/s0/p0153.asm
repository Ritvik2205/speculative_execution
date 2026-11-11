.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 33
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
add dl, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
lea bx, qword ptr [rax + rdx]
setp dl
movsx bx, cl
add cl, 107 # instrumentation
cmovnl bx, bx
or cl, 105
cmovle edx, ebx
cmovnbe rdi, rax
add bl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
cmp edx, ebx
btc eax, 89
add dl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
lea rdi, qword ptr [rax + rbx]
imul rcx, rbx, 5
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle di, di
add eax, 1938514106
lea bx, qword ptr [rbx]
add dl, 113 # instrumentation
setnb dl
movsx eax, ax
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

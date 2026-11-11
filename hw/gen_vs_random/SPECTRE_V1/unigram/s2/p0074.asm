.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rsi + rax + 63231]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 92
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cwd
add al, al
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
lea ax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
btr si, 88
xor al, 54
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
btr eax, edx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

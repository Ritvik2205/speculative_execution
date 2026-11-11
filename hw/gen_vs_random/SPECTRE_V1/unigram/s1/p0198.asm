.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
not eax
lea eax, qword ptr [rdi + rdi + 83]
add bl, 70
add al, -121 # instrumentation
setno al
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
xor dil, -37
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rcx + rax]
lea rcx, qword ptr [rax + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
movsx ebx, bx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
add al, -76 # instrumentation
cmovnbe cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

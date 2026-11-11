.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 110 # instrumentation
cmovb rcx, rax
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
cmovb ebx, edx
add dl, dl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
imul rdi, rsi, -45
mul cx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
movsx edi, al
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

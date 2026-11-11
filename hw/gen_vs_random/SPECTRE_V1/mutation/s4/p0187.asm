.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
add al, 110 # instrumentation
cmovb rcx, rax
cmovb ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
add dl, dl
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
movsx edi, al
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
imul rdi, rsi, -45
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
mul cx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
btr rdx, rax
add cl, -123 # instrumentation
cmovnp rdi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
test dl, -36
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

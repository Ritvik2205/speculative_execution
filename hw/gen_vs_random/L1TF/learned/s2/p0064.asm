.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
cmovl bx, si
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 37
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
or dl, dl
sbb ax, 67
lea rax, qword ptr [rsi + rcx + 68]
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovle si, si
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
mov di, cx
movzx rbx, al
or al, al
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
lea edx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
lea esi, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and dl, dil
sub cl, cl
not rdi
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
cmovnbe rax, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

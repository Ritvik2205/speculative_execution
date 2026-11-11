.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
sbb dil, cl
sub bl, dl
add al, -117 # instrumentation
not rsi
add dl, -4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
setbe al
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rcx + 40]
cmp al, 46
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea eax, qword ptr [rbx]
imul edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

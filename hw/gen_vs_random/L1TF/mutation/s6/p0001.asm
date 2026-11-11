.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -885407671
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
neg rbx
lea cx, qword ptr [rdi + rcx + 55876]
lea bx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmovnz rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 70
lea cx, qword ptr [rdx + rdx + 9623]
imul rax, rsi
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
lea ebx, qword ptr [rsi + rcx]
cmp bl, bl
cmovp eax, edi
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

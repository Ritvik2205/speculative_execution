.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
cmovnz rbx, rsi
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
lea cx, qword ptr [rdx + rdx + 9623]
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
lea cx, qword ptr [rdi + rcx + 55876]
cmovp eax, edi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 70
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor eax, -603819833
lea ebx, qword ptr [rsi + rcx]
neg rbx
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
imul rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
imul rax, rsi
neg rbx
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
cmovp eax, edi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
cmovnz rbx, rsi
xor eax, -69
lea bx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
lea cx, qword ptr [rdi + rcx + 55876]
lea ebx, qword ptr [rsi + rcx]
lea cx, qword ptr [rdx + rdx + 9623]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 70
jmp .bb_0.1
.bb_0.1:
and di, si
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and dl, 59
cmovno di, ax
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
add ax, 1313
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

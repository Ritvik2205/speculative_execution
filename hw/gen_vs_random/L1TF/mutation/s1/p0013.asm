.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
lea rdx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
add al, bl
lea di, qword ptr [rbx]
btr rdx, 161
btr dx, ax
xor al, bl
cmovb di, bx
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
adc dl, cl
not rcx
imul rdi, rsi, -42
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

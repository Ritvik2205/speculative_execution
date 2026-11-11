.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
adc dl, bl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
inc ax
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
lea si, qword ptr [rdi]
imul cx, di, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

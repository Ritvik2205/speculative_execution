.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
add dl, -48 # instrumentation
lea edi, qword ptr [rdi + rsi]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
setp bl
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rbx + rax + 90]
lea si, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 74
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

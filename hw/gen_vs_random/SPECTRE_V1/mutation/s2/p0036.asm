.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, al
add dl, 40 # instrumentation
btc rdx, rdx
cmovnz rdx, rbx
imul ebx, ebx, 119
sub ebx, 75
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
sbb al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
mul al
lea di, qword ptr [rax + rdi + 4281]
cmp al, dl
adc al, cl
mov bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

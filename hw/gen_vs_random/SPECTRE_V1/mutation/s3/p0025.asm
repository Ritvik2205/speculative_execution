.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rdx, rbx
add dl, 40 # instrumentation
btc rdx, rdx
cmp cl, al
sub ebx, 75
imul ebx, ebx, 119
sbb al, cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, cl
mul al
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
lea di, qword ptr [rax + rdi + 4281]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
mov bl, cl
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

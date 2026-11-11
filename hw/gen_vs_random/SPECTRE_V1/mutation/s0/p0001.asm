.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, al
add dl, 40 # instrumentation
btc rdx, rdx
sbb al, cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
sub ebx, 75
imul ebx, ebx, 119
cmovnz rdx, rbx
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dl
lea di, qword ptr [rax + rdi + 4281]
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
adc al, cl
mul al
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

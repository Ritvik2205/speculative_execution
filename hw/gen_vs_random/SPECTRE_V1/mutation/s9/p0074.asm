.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
cmovnz rdx, rbx
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
imul ebx, ebx, 119
sbb al, cl
cmp cl, al
add dl, 40 # instrumentation
btc rdx, rdx
sub ebx, 75
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
adc al, cl
mov bl, cl
cmp al, dl
mul al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
lea di, qword ptr [rax + rdi + 4281]
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

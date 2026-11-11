.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
setb sil
add bl, 117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 15
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
mul rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
adc ax, 87
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 2
add dl, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, -285849275
xor ax, 2053
btc rbx, rdi
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
sub rax, 90
xor eax, 73
jmp .bb_0.1
.bb_0.1:
and dl, 60 # instrumentation
cmovno edi, edi
bts rbx, 46
cmovz si, dx
sub al, 84
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 41
xor cl, cl
not cl
cmovns eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
cmovz rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and rcx, 83
imul ax, si, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

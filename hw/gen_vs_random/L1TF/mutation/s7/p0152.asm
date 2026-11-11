.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
setns cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
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
xor eax, -2123070438
lea bx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
lea cx, qword ptr [rdi + rcx + 55876]
lea ebx, qword ptr [rsi + rcx]
lea cx, qword ptr [rdx + rdx + 9623]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

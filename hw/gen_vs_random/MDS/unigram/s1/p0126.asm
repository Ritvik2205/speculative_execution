.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
xor ecx, 8
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
test dl, sil
test dil, dil
and al, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
btr dx, 47
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
bt ebx, edi
cmovz rax, rax
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
cmovs si, si
and dl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
xor dx, 76
and bl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

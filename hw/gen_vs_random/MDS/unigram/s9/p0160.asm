.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmovz ecx, ecx
cmovnbe ecx, edx
or edx, -78
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
xor edx, 17
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, rcx
and bx, 39
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
btc si, 99
btr ebx, 0
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

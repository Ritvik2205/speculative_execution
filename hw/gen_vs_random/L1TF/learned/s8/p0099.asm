.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
lea eax, qword ptr [rdx + rdx + 36]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
or al, -57
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
xchg edi, ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 9
xor bl, sil
xor dl, sil
mov sil, 75
and rcx, rdx
test edx, 1891691791
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ebx, edx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
bts rax, 77
cmovnb ebx, edx
cmovnz rax, rbx
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rbx, 65
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
test sil, al
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 86
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

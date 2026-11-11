.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
btr eax, 51
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 65
bt eax, ecx
or dil, 12
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 41
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
test al, 127
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
test ecx, -1843375753
xor cl, dil
test rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

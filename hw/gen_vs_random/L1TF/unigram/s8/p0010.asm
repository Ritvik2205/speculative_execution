.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add ebx, 2
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
add cl, 35 # instrumentation
sets al
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], bx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
add cl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 76
test al, -56
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
setl bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

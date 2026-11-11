.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
add dl, -52 # instrumentation
adc si, 23
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 43
cmp dx, 61
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
or al, -5
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
lea rbx, qword ptr [rax + rdx + 77]
jmp .bb_0.1
.bb_0.1:
seto sil
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
or ebx, 69
cmovl ecx, eax
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

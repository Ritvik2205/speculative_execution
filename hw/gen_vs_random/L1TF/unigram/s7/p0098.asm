.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
lea di, qword ptr [rdi + rcx + 88]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
add al, al
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rcx], cx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 99
imul sil
movsx eax, cl
add al, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and dil, dil
add al, -102
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

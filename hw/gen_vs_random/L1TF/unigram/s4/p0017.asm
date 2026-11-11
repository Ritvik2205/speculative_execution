.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 25
lea esi, qword ptr [rcx + rdi + 32]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
mov sil, cl
sub dl, bl
add cl, 35 # instrumentation
sets bl
btr edx, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

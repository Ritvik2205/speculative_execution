.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 17
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
neg cl
jmp .bb_0.1
.bb_0.1:
btr edi, edx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
xchg dl, dil
setno bl
mov ax, di
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 57
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

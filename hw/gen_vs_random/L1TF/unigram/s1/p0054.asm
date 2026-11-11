.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 110
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
cmovb eax, edi
btc cx, 31
neg edx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
imul dx, cx
add dl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
add bl, 110 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
xor al, dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
add dl, 43 # instrumentation
lea rbx, qword ptr [rax + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

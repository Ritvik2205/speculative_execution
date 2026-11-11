.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
cmovnb rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
test cx, -17886
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
btr rdx, rcx
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 8
cmp ecx, eax
mov rbx, -8992833348021516010
add sil, sil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

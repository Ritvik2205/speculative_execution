.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
add dil, 65 # instrumentation
cmovo rdi, rax
lea rax, qword ptr [rdx + rcx + 33]
cmovbe rcx, rbx
setb dl
jmp .bb_0.1
.bb_0.1:
imul esi, esi, 37
lea di, qword ptr [rdx + rdi + 43]
setnbe dl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
add sil, sil
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
add cl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 74
cmovbe rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

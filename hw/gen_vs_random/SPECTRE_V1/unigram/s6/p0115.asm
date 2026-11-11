.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -125 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 7
add al, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
movzx eax, cl
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
movzx dx, dl
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 30
cmovle di, cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
imul rdx, rcx, 26
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -49 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
lea rcx, qword ptr [rdi + rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
or dl, -92
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 40
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 70
btr esi, 37
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
setnbe cl
jmp .bb_0.1
.bb_0.1:
or dx, 1 # instrumentation
dec rbx
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
btc esi, esi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 85
lea cx, qword ptr [rbx + rax + 62]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdx
cmovbe edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
add sil, 2
inc si
lea ecx, qword ptr [rcx + rax + 79]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
btc ecx, 92
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
imul ebx, esi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdi
neg rdx
cmovnbe rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

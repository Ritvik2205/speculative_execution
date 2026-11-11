.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe edx, esi
or rdx, rbx
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test rax, rcx
xor cl, 78
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 0 # instrumentation
adc cl, dl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 26
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
cmovno eax, ebx
add bl, 78 # instrumentation
adc cx, 8
and al, -54
cmp sil, cl
cmovz ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
